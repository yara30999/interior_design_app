import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/package_model.dart';
import '../utils/color_manager.dart';
import 'package_info.dart';

class PackageCard extends StatelessWidget {
  final PackageModel item;

  const PackageCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: const BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //......> package image
            Expanded(
              flex: 3,
              child: CachedNetworkImage(
                imageUrl: item.imageUrl,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            //......> package information
            Expanded(
              flex: 7,
              child: PackageInfo(item: item),
            ),
          ],
        ),
      ),
    );
  }
}
