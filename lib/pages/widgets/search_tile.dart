import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTile extends StatelessWidget {
  const SearchTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: TextField(
        style: GoogleFonts.montserrat(
          fontSize: 12,
          color: theme.colorScheme.onSurfaceVariant,
        ),
        cursorColor: theme.colorScheme.onSurfaceVariant,
        cursorHeight: 15,
        decoration: InputDecoration(
          hintText: 'ПОИСК',
          hintStyle: GoogleFonts.montserrat(
            fontSize: 12,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          prefixIcon: Icon(Icons.search, color: theme.colorScheme.onSurfaceVariant,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: theme.colorScheme.primary,
            ),
            borderRadius: BorderRadius.zero,
          ),
          filled: true,
          fillColor: theme.colorScheme.surfaceVariant,
        ),
      ),
    );
  }
}
