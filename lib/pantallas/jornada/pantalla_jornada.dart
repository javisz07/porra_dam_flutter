import 'package:flutter/material.dart';
import 'package:porra_dam/utils/header.dart';

class PantallaJornada extends StatefulWidget {
  const new({super.key});

  @override
  State<PantallaJornada> createState() => _PantallaJornada();
}

class _PantallaJornada extends State<PantallaJornada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('../assets/images/fondo.webp', fit: BoxFit.cover, alignment: Alignment.bottomCenter),

          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black87]
              ),
            ),
          ),

          Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderPorra()

                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}