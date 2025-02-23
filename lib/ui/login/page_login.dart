import 'package:bbc_colaborador/ui/login/widgets/email_input.dart';
import 'package:bbc_colaborador/ui/login/widgets/login_button.dart';
import 'package:bbc_colaborador/ui/login/widgets/password_input.dart';
import 'package:bbc_colaborador/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityLogo;
  late Animation<double> _opacityForm;
  late Animation<Offset> _logoPosition;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _opacityLogo = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.5, curve: Curves.easeIn)),
    );

    _logoPosition = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -1.5)).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.5, 0.8, curve: Curves.easeInOut)),
    );

    _opacityForm = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.8, 1.0, curve: Curves.easeIn)),
    );

    _startAnimation();
  }

  void _startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    _controller.forward();
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
        body: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.3 + _logoPosition.value.dy * 100,
                  child: AnimatedOpacity(
                    opacity: _opacityLogo.value,
                    duration: const Duration(milliseconds: 500),
                    child: Image.asset(
                      "assets/images/alme_logo.png",
                      height: 200,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: AnimatedOpacity(
                    opacity: _opacityForm.value,
                    duration: const Duration(milliseconds: 500),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("Inicie a sessão"),
                          ),
                          EmailInput(tecEmail: TextEditingController()),
                          const SizedBox(height: 24),
                          PasswordInput(tecPass: TextEditingController()),
                          const SizedBox(height: 36),
                          const LoginButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
