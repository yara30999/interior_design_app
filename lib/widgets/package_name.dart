import 'package:flutter/material.dart';
import '../models/package_model.dart';
import '../utils/color_manager.dart';

class PackageName extends StatelessWidget {
  final PackageModel item;
  const PackageName({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // black container that contains the text
        BlackContainer(item: item),
        // Shiny gradient border overlay
        const ShaderBorderOverlay(),
      ],
    );
  }
}

class ShaderBorderOverlay extends StatelessWidget {
  const ShaderBorderOverlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: ShaderMask(
        shaderCallback: (rect) {
          return const LinearGradient(
            colors: [
              ColorManager.gold,
              ColorManager.brightGold,
              ColorManager.shiny,
              ColorManager.gold,
            ],
            stops: [0.0, 0.3, 0.7, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(rect);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.transparent,
            border: Border.all(
              width: 6,
              color:
                  ColorManager.white, // This will be replaced by the gradient
            ),
          ),
        ),
      ),
    );
  }
}

class BlackContainer extends StatelessWidget {
  const BlackContainer({
    super.key,
    required this.item,
  });

  final PackageModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorManager.black,
        borderRadius: BorderRadius.circular(40),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          item.title,
          style: const TextStyle(
            color: ColorManager.brightGold,
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
