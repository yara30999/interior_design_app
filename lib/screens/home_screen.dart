import 'package:flutter/material.dart';
import '../utils/asset_manager.dart';
import '../widgets/packages_sliver_list.dart';
import '../widgets/search_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            SearchAppBar(),
            SliverPadding(
              padding: EdgeInsets.all(24.0),
              sliver: PackagesSliverList(),
            ),
          ],
        ),
      ),
    );
  }
}
