import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTesxtField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  const MyTesxtField(
    {
      super.key,
      required this.controller,
      required this.hintText,
      required this.labelText,
      }
    );

  @override
  State<MyTesxtField> createState() => _MyTesxtFieldState();
}

class _MyTesxtFieldState extends State<MyTesxtField> {
  @override
  Widget build(BuildContext context) {
    return  TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                filled: true,
                fillColor:
                    const Color(0xFFFFD18E), // Mengatur warna latar belakang
                hintText: widget.hintText,
                labelText: widget.labelText,
                labelStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                hintStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            );
  }
}