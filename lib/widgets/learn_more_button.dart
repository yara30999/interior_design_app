import 'package:flutter/material.dart';
import '../models/package_model.dart';
import '../utils/color_manager.dart';
import '../utils/routes_manager.dart';

class LearnMoreButton extends StatelessWidget {
  final PackageModel item;
  const LearnMoreButton({super.key, required this.item});

  void _learnMoreOnClick(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.detailsRoute, arguments: item);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _learnMoreOnClick(context);
      },
      child: Container(
        width: 110,
        height: 30,
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: const Stack(
          children: [
            TextPart(),
            ArrowPart(),
          ],
        ),
      ),
    );
  }
}

class TextPart extends StatelessWidget {
  const TextPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 30, right: 5),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: ColorManager.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Text(
          "LEARN MORE",
          style: TextStyle(
              color: ColorManager.white,
              fontSize: 8,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

class ArrowPart extends StatelessWidget {
  const ArrowPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          color: ColorManager.white,
          shape: BoxShape.circle,
        ),
        child: Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: ColorManager.white,
            shape: BoxShape.circle,
            border: Border.all(color: ColorManager.black),
          ),
          child: const Icon(
            Icons.arrow_forward,
            size: 20,
            color: ColorManager.black,
          ),
        ),
      ),
    );
  }
}
