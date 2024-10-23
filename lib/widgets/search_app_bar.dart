import 'package:flutter/material.dart';
import '../utils/asset_manager.dart';
import '../utils/color_manager.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      toolbarHeight: 110,
      pinned: true,
      floating: true,
      snap: true,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: AppBarDecoration(),
      ),
      leading: Icon(
        Icons.grid_view,
        color: ColorManager.white,
        size: 35,
      ),
      title: SearchField(),
    );
  }
}

class AppBarDecoration extends StatelessWidget {
  const AppBarDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(35.0),
      ),
      child: Image(
        image: AssetImage(
          ImageAssets.blackBackground,
        ),
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        hintText: 'Search here...',
        hintStyle: const TextStyle(color: ColorManager.normalGrey),
        suffixIcon: const Icon(
          Icons.search,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        constraints: const BoxConstraints(maxHeight: 38),
        filled: true,
        fillColor: ColorManager.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
