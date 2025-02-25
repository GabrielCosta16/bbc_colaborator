import 'package:bbc_colaborador/ui/widgets/my_card.dart';
import 'package:flutter/material.dart';

class WdgtRowAttendance extends StatelessWidget {
  const WdgtRowAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return MyCard(content: Text("1 - Corte máquina - 13:24"));
  }
}
