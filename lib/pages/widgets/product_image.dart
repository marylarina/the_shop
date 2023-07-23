import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/models/product.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: product.picture,
      fit: BoxFit.fitWidth,
    );
  }
}
