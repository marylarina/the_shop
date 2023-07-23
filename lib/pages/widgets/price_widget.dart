import 'package:final_project/domain/models/product.dart';
import 'package:final_project/util/money_format/money_exstensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Price extends StatelessWidget {
  const Price({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 32),
      child: SizedBox(
        width: 360,
        height: 24,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(product.price.formatMoney(),
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.w400, color: theme.colorScheme.onPrimary),
              ),
            ),
            if (product.oldPrice != null)
              Text(product.oldPrice!.formatMoney(),
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.w400, color: theme.colorScheme.onSurfaceVariant,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: theme.colorScheme.onSurfaceVariant),
              ),
          ],
        ),
      ),
    );
  }
}
