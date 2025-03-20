import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cardFormatter = MaskTextInputFormatter(
    mask: "#### #### #### ####",
    filter: {
      "#": RegExp(r"[0-9]"),
    },
  );
  final cvvFormatter = MaskTextInputFormatter(
    mask: "###",
    filter: {
      "#": RegExp(r"[0-9]"),
    },
  );
  final expFormatter = MaskTextInputFormatter(
    mask: "##/##",
    filter: {
      "#": RegExp(r"[0-9]"),
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // Card Number
              TextField(
                autocorrect: false,
                inputFormatters: [cardFormatter],
                keyboardType: TextInputType.number,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF4F4F4),
                  hintText: "Card Number",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              // CVV & Exp

              // Cardholder Name
            ],
          ),
        ),
      ),
    );
  }
}
