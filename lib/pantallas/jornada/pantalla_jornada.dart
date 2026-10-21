import 'package:flutter/material.dart';

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          IconButton(
                            padding: EdgeInsets.zero, // le quitamos el padding por defecto 
                            constraints: const BoxConstraints(), // elimina el tamaño minimo por defecto
                            icon: const Icon(Icons.menu, size: 30, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),

                          Text("Porra DAM",
                            style: TextStyle(
                              fontFamily: "grotesk",
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),

                          Container(
                            width: 60,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color(0xFFc1eed7),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Row(
                              spacing: 4,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("36",
                                style: TextStyle(
                                  fontFamily: "grotesk",
                                  fontSize: 15,
                                  color: Colors.white
                                ),
                                ),
                                Text("pts",
                                style: TextStyle(
                                  fontFamily: "grotesk",
                                  fontSize: 15,
                                  color: const Color.fromARGB(255, 4, 136, 11)
                                ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),

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