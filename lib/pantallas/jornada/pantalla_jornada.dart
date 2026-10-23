import 'package:flutter/material.dart';
import 'package:porra_dam/utils/header.dart';
import 'package:porra_dam/utils/pantalla_principal.dart';

class PantallaJornada extends StatefulWidget {
  const PantallaJornada({super.key});

  @override
  State<PantallaJornada> createState() => _PantallaJornada();
}

class _PantallaJornada extends State<PantallaJornada> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          '../assets/images/fondo.webp',
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),

        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black87],
            ),
          ),
        ),

        Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 180,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderPorra(),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jornada 1",
                          style: TextStyle(
                            fontFamily: "grotesk",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.0,
                          ),
                        ),

                        Text(
                          "Tu porra para esta jornada",
                          style: TextStyle(
                            fontFamily: "grotesk",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),

                    Row(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
