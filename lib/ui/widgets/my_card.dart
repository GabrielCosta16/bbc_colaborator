import 'package:bbc_colaborador/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Widget content;

  const MyCard({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border(left: BorderSide(color: azul, width: 16)),
        color: branco,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: content,
    );
  }
}
