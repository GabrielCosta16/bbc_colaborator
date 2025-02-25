import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WdgtTotalCount extends StatelessWidget {
  const WdgtTotalCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "3 atendimentos",
            style: context.textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
