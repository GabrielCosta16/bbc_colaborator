import 'package:bbc/infra/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CampoSenha extends StatefulWidget {
  TextEditingController controller;
  Function(String)? onChanged;
  bool? exibirEsqueciSenha;

  CampoSenha(this.controller,
      {this.onChanged, this.exibirEsqueciSenha = false});

  @override
  _CampoSenhaState createState() => _CampoSenhaState();
}

class _CampoSenhaState extends State<CampoSenha> {
  bool obscureText = true;
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.centerRight,
          children: [
            TextField(
              controller: widget.controller,
              onChanged: widget.onChanged,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: 'Digite sua senha',
                hintStyle:
                context.textTheme.bodySmall!.copyWith(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: azul),
                ),
                border: OutlineInputBorder(),
              ),
              maxLines: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: obscureText
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                color: obscureText ? Colors.grey : Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
