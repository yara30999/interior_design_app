import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/package_model.dart';
import '../utils/asset_manager.dart';
import 'contact_us_button.dart';
import 'package_detail_text.dart';
import 'package_name.dart';

class PackageInfoBody extends StatelessWidget {
  final PackageModel item;
  const PackageInfoBody({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          PackageName(
            item: item,
          ),
          SvgPicture.asset(
            SvgAssets.lineSeperation,
            height: 50,
            semanticsLabel: 'line - seperation',
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: CachedNetworkImage(
              imageUrl: item.imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          PackageDetailText(
            packageModel: item,
          ),
          const SizedBox(height: 20),
          const ContactUsButton(),
        ],
      ),
    );
  }
}
