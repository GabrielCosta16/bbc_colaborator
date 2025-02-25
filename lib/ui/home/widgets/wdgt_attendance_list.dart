import 'package:bbc_colaborador/ui/home/widgets/wdgt_row_attendance.dart';
import 'package:flutter/material.dart';

class WdgtAttendanceList extends StatelessWidget {
  const WdgtAttendanceList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> lista = ["a", 'b', 'c'];
    return RefreshIndicator(
      onRefresh: () async {},
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: WdgtRowAttendance());
            },
          ),
        ),
      ),
    );
  }
}
