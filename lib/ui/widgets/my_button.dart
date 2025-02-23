
import 'package:bbc_colaborador/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyButton extends StatelessWidget {
  final String title;
  final Function() onClick;
  final Color? color;
  final IconData? icon;
  EdgeInsetsGeometry? padding;
  bool? disable;

  MyButton({super.key,
    required this.title,
    required this.onClick,
    this.padding,
    this.icon,
    this.disable = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: padding ?? const EdgeInsets.all(8.0),
          child: MaterialButton(
            height: 42,
            onPressed: disable!
                ? null
                : () async {
              onClick();
            },
            disabledColor: Colors.grey,
            disabledTextColor: cinzaMedio,
            color: color ?? verde,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                iconBotao(),
                titleBotao(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget titleBotao(BuildContext context) {
    return Container(
      child: Expanded(
        child: Text(
          title,
          style: context.textTheme.titleSmall!.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget iconBotao() {
    return icon != null
        ? Icon(
      icon,
      color: Colors.white,
    )
        : const SizedBox(
      height: 0,
    );
  }
}
