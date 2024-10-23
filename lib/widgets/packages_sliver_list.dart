import 'package:flutter/material.dart';

import '../models/package_model.dart';
import 'package_card.dart';

class PackagesSliverList extends StatelessWidget {
  const PackagesSliverList({
    super.key,
  });

  List<PackageModel> get items => [
        PackageModel(
            title: 'Platinum Package',
            price: 6000,
            imageUrl:
                'https://th.bing.com/th/id/R.a61b80fd780c0a638419fe1a570e6d64?rik=FqRuhFATWIOMDQ&pid=ImgRaw&r=0',
            isFavorite: true,
            details:
                '''60x60 Porcelain\nMarble Finish\nWaterproofing Layer\nLegrand Switches\nCat7 Wire\nPhilips LEDs\nPOP Ceiling\n'''),
        PackageModel(
            title: 'Gold Package',
            price: 5400,
            imageUrl:
                'https://th.bing.com/th/id/R.e21cbf8608e19075291eb627922d9c3a?rik=Lns6qr%2b0%2fznu9Q&pid=ImgRaw&r=0',
            isFavorite: true,
            details:
                '''60x60 Ceramic \n Glc Painting \n Electricity Build Up\n Sweedy Wires\n Cat6 Wire\n Venus Lights\n Gypsum Board\n '''),
        PackageModel(
            title: 'Sliver Package',
            price: 4000,
            imageUrl:
                'https://th.bing.com/th/id/OIP.Fa9hXz8bozIhnR6-98di4gHaIJ?rs=1&pid=ImgDetMain',
            isFavorite: false,
            details:
                '''40x40 Tiles\nGlossy Coating\nThermal Protection\nSchneider Sockets\nFiber Optic Cable\nSyska Downlights\nWooden Partitions\n '''),
        PackageModel(
            title: 'Customize Package',
            price: null,
            imageUrl:
                'https://th.bing.com/th/id/OIP.TIVyrsRnMYyKe6l9ZSIMngHaKE?rs=1&pid=ImgDetMain',
            isFavorite: false,
            details:
                '''50x50 Granite\nTextured Surface\nAnti-Slip Treatment\nMK Electric Switches\nEthernet Cable\nHalonix Lamps\nFalse Ceiling\n '''),
      ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 14.0),
          child: PackageCard(
            item: items[index],
          ),
        );
      },
    );
  }
}
