import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FavouritesPage extends StatefulWidget {
  const FavouritesPage({
    super.key,
  });

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  //ProductClient get productClient => context.read();


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}