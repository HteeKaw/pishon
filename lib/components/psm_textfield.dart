import 'package:flutter/material.dart';

class PSMTextField extends StatelessWidget {
  const PSMTextField({
    Key? key,
    required this.controller,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onPressed,
    this.obscureText,
    this.textInputType,
    this.errorText,
  }) : super(key: key);
  final TextEditingController controller;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onPressed;
  final bool? obscureText;
  final TextInputType? textInputType;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextField(
        keyboardType: textInputType,
        obscureText: obscureText ?? false,
        controller: controller,
        decoration: InputDecoration(
          errorText: errorText,
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.white,
          ),
          suffixIcon: IconButton(
            splashColor: Colors.transparent,
            onPressed: onPressed,
            icon: Icon(suffixIcon),
            color: Colors.white,
          ),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(30)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
