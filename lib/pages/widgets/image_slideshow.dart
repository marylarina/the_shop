import 'package:final_project/pages/widgets/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../domain/models/product.dart';

class ImageSlideShow extends StatelessWidget {
  const ImageSlideShow({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.fromLTRB(58.5, 8, 58.5, 16),
        child: ImageSlideshow(
          width: 273,
          height: 296.01,
          indicatorColor: theme.colorScheme.onSurfaceVariant,
          indicatorPadding: 10.0025,
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 23.01),
                child: ProductImage(product: product,)
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 23.01),
                child: ProductImage(product: product,)
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 23.01),
                child: ProductImage(product: product,)
            ),
          ],
        ),
      );
  }
}
