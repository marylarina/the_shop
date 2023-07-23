import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Заголовок карточки товара',
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
                  Text('-44%',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(58.5, 8, 58.5, 16),
              child: ImageSlideshow(
                width: 273,
                  height: 296.01,
                  indicatorColor: theme.colorScheme.onSurfaceVariant,
                  indicatorPadding: 10.0025,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 23.01),
                      child: CachedNetworkImage(
                        imageUrl:
                        'https://cdnn21.img.ria.ru/images/07e5/09/09/1749303395_658:0:2705:2047_1280x0_80_0_0_eb846e0ef7ab57e3711333ac09401cab.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 23.01),
                      child: CachedNetworkImage(
                        imageUrl:
                        'https://cdnn21.img.ria.ru/images/07e5/09/09/1749303395_658:0:2705:2047_1280x0_80_0_0_eb846e0ef7ab57e3711333ac09401cab.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 23.01),
                      child: CachedNetworkImage(
                        imageUrl:
                        'https://cdnn21.img.ria.ru/images/07e5/09/09/1749303395_658:0:2705:2047_1280x0_80_0_0_eb846e0ef7ab57e3711333ac09401cab.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: SizedBox(
                width: 360,
                height: 84,
                child: Text('Название товара Название товара Название товара Название товара',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.w400, color: theme.colorScheme.outlineVariant),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 32),
              child: SizedBox(
                width: 360,
                height: 24,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text('162 394 Р',
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w400, color: theme.colorScheme.onPrimary),
                      ),
                    ),
                    Text('289 990 Р',
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w400, color: theme.colorScheme.onSurfaceVariant,
                        decoration: TextDecoration.lineThrough,
                      decorationColor: theme.colorScheme.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 32),
              child: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.centerRight,
                  backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                  onPressed: (){},
                  child: Row(
                    children: [
                      const Spacer(),
                      Icon(CupertinoIcons.bag,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(
                        width: 12.6,
                      ),
                      Text(
                        'В КОРЗИНУ',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
            ),
            ),
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
