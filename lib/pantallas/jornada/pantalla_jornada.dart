import 'package:flutter/material.dart';
import 'package:porra_dam/utils/header.dart';

class PantallaJornada extends StatefulWidget {
  const PantallaJornada({super.key});

  @override
  State<PantallaJornada> createState() => _PantallaJornada();
}

class _PantallaJornada extends State<PantallaJornada> {
  List<int> golesLocal = [0, 0, 0, 0];
  List<int> golesVisitante = [0, 0, 0, 0];
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
              height: 165,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  spacing: 16,
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
                    Row(
                      spacing: 8,
                      children: [
                        Icon(Icons.event_outlined, size: 22, color: Colors.white),
                        Text("Se cierra el: Sáb 12 oct · 16:00",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "grotesk",
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF8F9FA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0), 
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  children: [ 
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(16),
                        children: [
                          _partidos("Real Madrid", "Atletico de Madrid","../assets/images/real_madrid.png","../assets/images/atletico_madrid.png", 0),
                          _partidos("Real Madrid", "Atletico de Madrid","../assets/images/real_madrid.png","../assets/images/atletico_madrid.png", 1),
                          _partidos("Real Madrid", "Atletico de Madrid","../assets/images/real_madrid.png","../assets/images/atletico_madrid.png", 2),
                          _partidos("Real Madrid", "Atletico de Madrid","../assets/images/real_madrid.png","../assets/images/atletico_madrid.png", 3),

                        ],
                      ),
                    ),
            
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: double.infinity, 
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black
                          ),
                          onPressed: () {},
                          child: const Text("Guardar pronósticos",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "grotesk",
                              fontSize: 17
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
                )
              ),
            ),
          ],
        ),
      ],
    );
  }

Widget _partidos(String eLoocal, String eVisitante, String escudoLocal, String escudoVisitante, int index) {
    return SizedBox(
      height: 137,
      width: double.infinity, 
      child: Card(
        color: const Color(0xFFF5F5F5),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        child: Padding(
          padding: const EdgeInsets.all(9.0), 
          child: Column(
            children: [
              // FILA EQUIPO LOCAL
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        escudoLocal,
                        alignment: Alignment.centerLeft,
                        height: 55,
                        width: 55,
                      ),
                      Text(eLoocal,
                      style: const TextStyle(
                            fontFamily: "grotesk",
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                  
                  Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFFBFBFC)),
                    ),
                    child: Row(
                      spacing: 6,
                      children: [
                        Text("${golesLocal[index]}", // Usa la lista del padre
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: "grotesk",
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(Icons.keyboard_arrow_down_outlined, size: 28, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              if (golesLocal[index] != 0){
                                golesLocal[index]--;
                              }
                            });
                          },
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(Icons.keyboard_arrow_up_outlined, size: 28, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              golesLocal[index]++;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // FILA EQUIPO VISITANTE (Manteniendo tu misma maquetación)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        escudoVisitante,
                        alignment: Alignment.centerLeft,
                        height: 55,
                        width: 55,
                      ),
                      Text(eVisitante,
                      style: const TextStyle(
                            fontFamily: "grotesk",
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                  
                  Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFFBFBFC)),
                    ),
                    child: Row(
                      spacing: 6,
                      children: [
                        Text("${golesVisitante[index]}", // Usa la lista del padre para el visitante
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: "grotesk",
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(Icons.keyboard_arrow_down_outlined, size: 28, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              if (golesVisitante[index] != 0){
                                golesVisitante[index]--;
                              }
                            });
                          },
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(Icons.keyboard_arrow_up_outlined, size: 28, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              golesVisitante[index]++;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
