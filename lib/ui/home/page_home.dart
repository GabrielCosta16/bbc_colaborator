import 'package:bbc_colaborador/ui/home/widgets/wdgt_attendance_list.dart';
import 'package:bbc_colaborador/ui/home/widgets/wdgt_comission_total.dart';
import 'package:bbc_colaborador/ui/home/widgets/wdgt_total_count.dart';
import 'package:bbc_colaborador/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  bool _showMainContent = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward().whenComplete(() {
      setState(() {
        _showMainContent = true;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cinza,
        body: Stack(
          children: [
            if (!_showMainContent)
              Center(
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Text(
                    "Bem-vindo, Mauro",
                    style: context.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            if (_showMainContent)
              Column(
                children: [
                  AppBar(
                    title: Text(
                      "Atendimentos",
                      style: context.textTheme.titleMedium
                          ?.copyWith(color: branco),
                    ),
                    centerTitle: true,
                    actions: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Icon(
                          Icons.filter_list_outlined,
                          color: branco,
                        ),
                      )
                    ],
                    backgroundColor: azul,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WdgtComissionTotal(),
                        Expanded(child: WdgtAttendanceList()),
                      ],
                    ),
                  ),
                  WdgtTotalCount()
                ],
              ),
          ],
        ),
      ),
    );
  }
}
