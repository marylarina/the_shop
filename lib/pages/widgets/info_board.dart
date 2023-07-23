import 'package:final_project/util/money_format/money_exstensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/models/product.dart';

class InfoBoard extends StatelessWidget {
  const InfoBoard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                product.price.formatMoney(),
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: theme.colorScheme.onSecondary,
                ),
              ),
              if (product.oldPrice != null)
              Text(
                product.oldPrice!.formatMoney(),
                style: GoogleFonts.montserrat(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: theme.colorScheme.onSecondary,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: theme.colorScheme.onSecondary,
                ),
              ),
            ],
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.black,
            shape: const CircleBorder(),
            child: const Icon(
              CupertinoIcons.bag,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
