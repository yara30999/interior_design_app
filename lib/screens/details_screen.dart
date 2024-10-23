// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/package_model.dart';
import '../utils/asset_manager.dart';
import '../widgets/package_info_body.dart';
import '../widgets/search_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  final PackageModel item;
  const DetailsScreen({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(
            ImageAssets.yelloBackgound,
            width: double.infinity,
          ).image,
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            const SearchAppBar(),
            SliverPadding(
              padding: const EdgeInsets.all(34.0),
              sliver: PackageInfoBody(item: item),
            ),
          ],
        ),
      ),
    );
  }
}
