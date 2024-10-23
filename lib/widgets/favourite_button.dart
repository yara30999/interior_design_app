import 'package:flutter/material.dart';
import '../models/package_model.dart';
import '../utils/color_manager.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({
    super.key,
    required this.item,
  });

  final PackageModel item;

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton>
    with SingleTickerProviderStateMixin {
  late bool isFavorite;
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween(begin: 20.0, end: 24.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceInOut),
    );

    isFavorite = widget.item.isFavorite;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleFavourite() async {
    if (!isFavorite) {
      //controller works only in like operation, does not work for unlike ...
      _controller.forward().then((_) => _controller.reverse());
    }
    setState(() {
      //toggle favourite button
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleFavourite,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(3),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: ColorManager.normalGrey),
        ),
        child: isFavorite
            ? AnimatedBuilder(
                animation: _animation,
                builder: (BuildContext context, Widget? child) {
                  return Icon(
                    Icons.favorite,
                    size: _animation.value,
                    color: ColorManager.darkRed,
                  );
                },
              )
            : const Icon(
                Icons.favorite_border,
                size: 20,
                color: ColorManager.normalGrey,
              ),
      ),
    );
  }
}
