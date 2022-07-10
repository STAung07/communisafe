import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterInput extends StatefulWidget {
  final String hint;
  final Widget iconData;
  final TextEditingController controller;
  final bool obscureText;

  const EnterInput({
    Key? key,
    required this.hint,
    required this.iconData,
    required this.controller,
    required this.obscureText,
  }) : super(key: key);

  @override
  State<EnterInput> createState() => _EnterInputState();
}

class _EnterInputState extends State<EnterInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: widget.iconData,
          filled: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          hintText: widget.hint,
          hintStyle: TextStyle(
            color: Color(0xfff9C9C9C),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.0,
          ),
          fillColor: const Color(0xffFAFCFE),
        ),
        autofocus: false,
        controller: widget.controller,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Color(0xfff9C9C9C),
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 1.0,
          ),
        ),
        obscureText: widget.obscureText,
      ),
    );
  }
}
