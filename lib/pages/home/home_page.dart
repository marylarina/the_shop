import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../navigation/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      lazyLoad: false,
      routes: const [
        ShowcaseTab(),
        CatalogTab(),
        BasketTab(),
        FavouritesTab(),
        ProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return CupertinoTabBar(
          activeColor: Colors.black,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.rectangle_grid_2x2,
              ),
              label: 'Витрина',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.manage_search,
              ),
              label: 'Каталог',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.bag,
              ),
              label: 'Корзина',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart,
              ),
              label: 'Избранное',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
              ),
              label: 'Профиль',
            ),
          ],
        );
      },
    );
  }
}