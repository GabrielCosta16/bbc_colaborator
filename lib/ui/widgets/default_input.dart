import 'package:bbc_colaborador/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultInput extends StatefulWidget {
  TextEditingController controller;
  Function(String)? onChanged;
  String hintText;
  bool? obscureText;

  DefaultInput(
      {this.onChanged,
      required this.controller,
      required this.hintText,
      this.obscureText = false});

  @override
  _DefaultInputState createState() => _DefaultInputState();
}

class _DefaultInputState extends State<DefaultInput> {
  bool hovering = false;
  bool obscuredText = false;

  @override
  void initState() {
    if (widget.obscureText == true) {
      obscuredText = true;
    }
    super.initState();
  }

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
              obscureText: obscuredText,
              decoration: InputDecoration(
                hintText: widget.hintText,
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
            widget.obscureText == true
                ? Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          obscuredText = !obscuredText;
                        });
                      },
                      icon: obscuredText
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      color: obscuredText ? Colors.grey : Colors.grey,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ],
    );
  }
}
