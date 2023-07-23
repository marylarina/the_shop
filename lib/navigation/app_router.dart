import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:final_project/pages/home/home_page.dart';

import '../pages/basket/basket_page.dart';
import '../pages/catalog/catalog_page.dart';
import '../pages/catalog/product_page.dart';
import '../pages/favourites/favourites_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/showcase/showcase_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(

      initial: true,
      page: HomeRoute.page,
      children: [
        AutoRoute(

            initial: true,
            page: ShowcaseTab.page,
            children: [
              AutoRoute(

                initial: true,
                page: ShowcaseRoute.page,
              ),
            ],
        ),
        AutoRoute(
            page: CatalogTab.page,
            children: [
          AutoRoute(

            initial: true,
            page: CatalogRoute.page,
          ),
              AutoRoute(

                page: ProductRoute.page,
              ),
        ],
        ),
        AutoRoute(

          page: BasketTab.page,
          children: [
            AutoRoute(

              initial: true,
              page: BasketRoute.page,
            ),
          ],
        ),
        AutoRoute(

          page: FavouritesTab.page,
          children: [
            AutoRoute(

              initial: true,
              page: FavouritesRoute.page,
            ),
          ],
        ),
        AutoRoute(

          page: ProfileTab.page,
          children: [
            AutoRoute(

              initial: true,
              page: ProfileRoute.page,
            ),
          ],
        ),
      ],
    ),
  ];
}

@RoutePage(name: 'ShowcaseTab')
class ShowcaseTabPage extends AutoRouter {
  const ShowcaseTabPage({super.key});
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'BasketTab')
class BasketTabPage extends AutoRouter {
  const BasketTabPage({super.key});
}

@RoutePage(name: 'FavouritesTab')
class FavouritesTabPage extends AutoRouter {
  const FavouritesTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}