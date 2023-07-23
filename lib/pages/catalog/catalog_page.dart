import 'package:auto_route/auto_route.dart';
import 'package:final_project/data/service/catalog_service.dart';
import 'package:final_project/navigation/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_project/pages/widgets/product_card.dart';
import 'package:final_project/pages/widgets/search_tile.dart';
import 'package:provider/provider.dart';

import '../../domain/models/product.dart';

@RoutePage()
class CatalogPage extends StatefulWidget {
  const CatalogPage({
    super.key,
  });

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  CatalogService get catalogService => context.read();

  Future<List<Product>> _loadProducts() async {
    final response = await catalogService.getProducts();
    return response.results;
  }

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
            FutureBuilder(
                future: _loadProducts(),
                builder: (context, snapshot) {
                  final products = snapshot.data;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.none) {
                    return const Center(
                      child: Text(
                        'ошибка при загрузке товаров',
                      ),
                    );
                  }
                  return Expanded(
                    child: GridView.builder(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: products!.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 164 / 250,
                      ),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: GestureDetector(
                            onTap: () {
                              context.router.navigate(
                                ProductRoute(
                                  product: product,
                                  productId: product.id,
                                ),
                              );
                            },
                            child: ProductCard(
                              product: product,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
