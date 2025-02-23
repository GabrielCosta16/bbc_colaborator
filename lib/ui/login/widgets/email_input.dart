import 'package:bbc_colaborador/ui/widgets/default_input.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatefulWidget {
  TextEditingController tecEmail;

  EmailInput({required this.tecEmail, super.key});

  @override
  State<EmailInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<EmailInput> {
  @override
  Widget build(BuildContext context) {
    return DefaultInput(
      controller: widget.tecEmail,
      hintText: "Digite aqui seu email",
    );
  }
}
