import 'package:bbc_colaborador/ui/utils/colors.dart';
import 'package:bbc_colaborador/ui/widgets/default_input.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  TextEditingController tecPass;

  PasswordInput({required this.tecPass, super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool remenberPass = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultInput(
          controller: widget.tecPass,
          hintText: "Digite aqui sua senha",
          obscureText: true,
        ),
        Row(
          children: [
            Checkbox(
              activeColor: azul,
                shape: CircleBorder(),
                value: remenberPass,
                onChanged: (value) {
                  setState(() {
                    remenberPass = !remenberPass;
                  });
                }),
            Text("Lembrar senha")
          ],
        )
      ],
    );
  }
}
