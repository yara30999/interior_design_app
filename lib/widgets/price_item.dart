import 'package:flutter/material.dart';
import '../models/package_model.dart';
import '../utils/color_manager.dart';

class PriceItem extends StatelessWidget {
  const PriceItem({
    super.key,
    required this.item,
  });

  final PackageModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.normalGrey),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text("${item.price ?? 0.0} EGP",
          style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
