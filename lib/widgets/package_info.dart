import 'package:flutter/material.dart';
import '../models/package_model.dart';
import 'add_to_cart_button.dart';
import 'favourite_button.dart';
import 'learn_more_button.dart';
import 'price_item.dart';

class PackageInfo extends StatelessWidget {
  const PackageInfo({
    super.key,
    required this.item,
  });

  final PackageModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(item.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
            FavouriteButton(item: item),
          ],
        ),
        const Text('Details of the Package', style: TextStyle(fontSize: 14)),
        LearnMoreButton(item: item),
        Visibility(
          visible: item.price == null ? false : true,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              PriceItem(item: item),
              const SizedBox(width: 10),
              const AddToCartButton(),
            ],
          ),
        ),
      ],
    );
  }
}
