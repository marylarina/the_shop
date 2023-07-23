import 'package:auto_route/annotations.dart';
import 'package:decimal/intl.dart';
import 'package:final_project/pages/widgets/button_add_basket.dart';
import 'package:final_project/pages/widgets/price_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../domain/models/product.dart';
import '../widgets/image_slideshow.dart';

@RoutePage()
class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.product, required this.productId});

  final Product product;
  final int productId;

  double _discount(Product product){
    final difference = num.parse(DecimalIntl(product.price).toString()) /
        num.parse(DecimalIntl(product.oldPrice!).toString());
    final d = 1 - difference;
    return d * 100;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double? discount;
    if (product.oldPrice != null){
      discount = _discount(product);
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          product.name,
          style: GoogleFonts.montserrat(
              fontSize: 16, height: 21, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 24,
              width: 360,
              child: Row(
                children: [
                  Text( discount != null ? '-${NumberFormat.decimalPatternDigits(decimalDigits: 2).format(discount)}%': 'Нет скидки :(',
                  style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.w400, color: theme.colorScheme.onInverseSurface),
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.topRight,
                    height: 28,
                    width: 34,
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.heart),
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            ImageSlideShow(product: product),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: SizedBox(
                width: 360,
                height: 84,
                child: Text(product.name,
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.w400, color: theme.colorScheme.outlineVariant),),
              ),
            ),
            Price(product: product),
            AddBasketButton(),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 11, 15, 11),
              child: Container(
                width: 360,
                height: 2,
                color: theme.colorScheme.outline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
