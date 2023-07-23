import 'package:auto_route/auto_route.dart';
import 'package:final_project/navigation/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_project/pages/widgets/product_card.dart';
import 'package:final_project/pages/widgets/search_tile.dart';

@RoutePage()
class CatalogPage extends StatefulWidget {

  const CatalogPage({
    super.key,
  });

  //final List<int> productIds;

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  //ProductClient get productClient => context.read();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Каталог товаров',
          style: GoogleFonts.montserrat(
              fontSize: 16, height: 21, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SearchTile(),
            Expanded(
              child: GridView.builder(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 164 / 250,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () {
                        context.router.navigate(
                          const ProductRoute(),
                        );
                      },
                      child: const ProductCard(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
