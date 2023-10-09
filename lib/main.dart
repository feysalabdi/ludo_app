import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Myludo());
}

class Myludo extends StatefulWidget {
  const Myludo({super.key});

  @override
  State<Myludo> createState() => _MyludoState();
}

class _MyludoState extends State<Myludo> {
  int fisrtLudo = 1;
  int secondLudo = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff283618),
        appBar: AppBar(
          centerTitle: true,
          elevation: 4,
          backgroundColor: Color(0xff283618),
          title: Text(
            "Luudo",
            style: GoogleFonts.blackOpsOne(fontSize: 30),
          ),
        ),
        body: Center(
          child: Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        fisrtLudo = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset("lib/images/dice$fisrtLudo.png")),
              ),
            ),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            secondLudo = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset("lib/images/dice$secondLudo.png")))),
          ]),
        ),
      ),
    );
  }
}
