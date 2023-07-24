
import 'package:auto_route/auto_route.dart';
import 'package:final_project/pages/widgets/basket_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/models/product.dart';
import '../catalog/catalog_page.dart';

@RoutePage()
class BasketPage extends StatefulWidget {
  const BasketPage({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Корзина',
          style: GoogleFonts.montserrat(
              fontSize: 16, height: 21, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: Expanded(
          child: ListView.separated(
              itemBuilder: (context, index){
                return BasketTile(product: exampleProduct!);
              },
              separatorBuilder: (_, __) => Padding(
                padding: const EdgeInsets.fromLTRB(15, 11, 15, 11),
                child: Container(
                  width: 360,
                  height: 2,
                  color: theme.colorScheme.outline,
                ),
              ),
              itemCount: 2),
        ),
      ),
    );
  }
}