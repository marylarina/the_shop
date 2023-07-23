import 'package:final_project/pages/widgets/info_board.dart';
import 'package:final_project/pages/widgets/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            ProductImage(product: product),
            IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon: const Icon(CupertinoIcons.heart),
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ],
        ),
        Expanded(
          child: SizedBox(
            height: 32,
            child: Text(product.name,
              style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: theme.colorScheme.onPrimary),
            ),
          ),
        ),
        InfoBoard(
          product: product,
        ),
      ],
    );
  }
}
