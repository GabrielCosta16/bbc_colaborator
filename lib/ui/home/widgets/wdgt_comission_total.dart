import 'package:bbc_colaborador/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WdgtComissionTotal extends StatelessWidget {
  const WdgtComissionTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final isExpanded = false.obs;

    return Obx(
      () => Column(
        children: [
          GestureDetector(
            onTap: () => isExpanded.toggle(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "R\$ 252.12",
                    style: context.textTheme.headlineMedium,
                  ),
                  const Icon(
                    Icons.expand_less_outlined,
                    color: verde,
                  ),
                  Text(
                    "(10.2%)",
                    style:
                        context.textTheme.labelMedium?.copyWith(color: verde),
                  )
                ],
              ),
            ),
          ),
          if (isExpanded.value) _buildExpandedContent(),
        ],
      ),
    );
  }

  Widget _buildExpandedContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• Há receber: R\$ 150.00", style: Get.textTheme.bodyMedium),
          Text("• Já recebida: R\$ 102.12",
              style: Get.textTheme.bodyMedium),
          const Divider(),
        ],
      ),
    );
  }
}
