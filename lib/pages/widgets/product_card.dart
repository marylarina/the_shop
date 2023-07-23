import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/pages/widgets/info_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            CachedNetworkImage(
              imageUrl:
                  'https://cdnn21.img.ria.ru/images/07e5/09/09/1749303395_658:0:2705:2047_1280x0_80_0_0_eb846e0ef7ab57e3711333ac09401cab.jpg',
              fit: BoxFit.fitWidth,
            ),
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
            child: Text(
              'Название товара Название товара',
              style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: theme.colorScheme.onPrimary),
            ),
          ),
        ),
        const InfoBoard(),
      ],
    );
  }
}
