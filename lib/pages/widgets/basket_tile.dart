import 'package:final_project/domain/models/product.dart';
import 'package:final_project/pages/widgets/product_image.dart';
import 'package:final_project/util/money_format/money_exstensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasketTile extends StatelessWidget {
  const BasketTile({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 16, 15, 0),
      child: SizedBox(
        height: 100,
        width: 360,
        child: Row(
          children: [
            ProductImage(product: product),
            const SizedBox(
              width: 27,
              height: 100,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 191,
                      height: 48,
                      child: Text(
                        product.name,
                        style: GoogleFonts.montserrat(
                            fontSize: 12, fontWeight: FontWeight.w400, color: theme.colorScheme.outlineVariant),
                      ),
                    ),
                    SizedBox(
                      width: 54,
                      height: 18,
                      child: Row(
                        children: [
                          IconButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.heart),
                            color: theme.colorScheme.onPrimary,
                          ),
                          IconButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {},
                            icon: const Icon(Icons.close),
                            color: theme.colorScheme.onPrimary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 57,
                  height: 40,
                  child: Column(
                    children: [
                      Text(
                        product.price.formatMoney(),
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                      if (product.oldPrice != null)
                        Text(
                          product.oldPrice!.formatMoney(),
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF879195),
                            decoration: TextDecoration.lineThrough,
                            decorationColor: const Color(0xFF879195),
                          ),
                        ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
