import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PButton extends StatelessWidget {
  const PButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.color,
      this.textColor})
      : super(key: key);
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: MaterialButton(
        // color: Colors.black,
        color: color,
        textColor: textColor,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(color: Colors.white, width: 2)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        minWidth: double.infinity,
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.robotoCondensed(
            textStyle: const TextStyle(fontSize: 18, letterSpacing: 1.0),
          ),
        ),
      ),
    );
  }
}
