import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class BasketPage extends StatefulWidget {
  const BasketPage({
    super.key,
  });

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  //ProductClient get productClient => context.read();


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}