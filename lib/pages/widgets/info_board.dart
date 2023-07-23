import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoBoard extends StatelessWidget {
  const InfoBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '1990 P',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: theme.colorScheme.onSecondary,
                ),
              ),
              Text(
                '2990 P',
                style: GoogleFonts.montserrat(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: theme.colorScheme.onSecondary,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: theme.colorScheme.onSecondary,
                ),
              ),
            ],
          ),
          const Spacer(),
          FloatingActionButton(
            //elevation: 12,
            onPressed: () {},
            backgroundColor: Colors.black,
            shape: const CircleBorder(),
            child: const Icon(
              CupertinoIcons.bag,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
