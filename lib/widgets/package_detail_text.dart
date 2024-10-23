import 'package:flutter/material.dart';
import '../models/package_model.dart';

class PackageDetailText extends StatelessWidget {
  final PackageModel packageModel;

  const PackageDetailText({super.key, required this.packageModel});

  @override
  Widget build(BuildContext context) {
    // Split the details into individual lines
    //List<String> detailsList = packageModel.details.trim().split('\n');
    List<String> detailsList = packageModel.details
        .split('\n')
        .map((line) => line.trim()) // Trim spaces around each line
        .where((line) => line.isNotEmpty) // Remove empty lines
        .toList();
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Contains:',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
          ),
          ...detailsList.map((detail) {
            return Row(
              children: [
                const SizedBox(width: 30),
                Text(
                  '• $detail', // Bullet symbol
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.w600), // Customize the size if needed
                ),
              ],
            );
          }),
        ]);
  }
}
