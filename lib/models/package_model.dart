class PackageModel {
  final String title;
  final double? price;
  final String imageUrl;
  final bool isFavorite;
  final String details;

  PackageModel({
    required this.title,
    this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.details,
  });
}
