import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "find your \nfavorite plants",
          style: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade700,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: const Icon(Icons.search),
        ),
      ],
    );
  }
}
