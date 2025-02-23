import 'package:bbc_colaborador/ui/utils/colors.dart';
import 'package:bbc_colaborador/ui/widgets/my_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MyButton(title: "Entrar", onClick: () {}, color: azul,);
  }
}
