import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddBasketButton extends StatelessWidget {
  const AddBasketButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
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
    );
  }
}
