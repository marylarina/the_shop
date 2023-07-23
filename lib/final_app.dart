import 'package:final_project/assets/color_scheme.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navigation/app_router.dart';



class FinalApp extends StatelessWidget {
  FinalApp({super.key});

  final AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.config(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: mainScheme,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    );
  }
}