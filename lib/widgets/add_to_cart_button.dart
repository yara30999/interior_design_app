import 'package:flutter/material.dart';
import '../utils/color_manager.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  void _addToCart() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _addToCart,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: ColorManager.cartColor),
        child: const Icon(
          Icons.shopping_cart,
          color: ColorManager.white,
          size: 15,
        ),
      ),
    );
  }
}
