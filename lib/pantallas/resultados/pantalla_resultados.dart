import 'package:flutter/material.dart';
import 'package:porra_dam/utils/header.dart';

class PantallaResultados extends StatelessWidget {
  const PantallaResultados({super.key});

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
            const SizedBox(
              width: double.infinity,
              height: 90,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: HeaderPorra(),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Resultados",
                                style: TextStyle(
                                  fontFamily: "grotesk",
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Jornada 1",
                                      style: TextStyle(fontFamily: "grotesk"),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(Icons.keyboard_arrow_down, size: 18),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Resultados oficiales y puntos obtenidos",
                            style: TextStyle(
                              fontFamily: "grotesk",
                              fontSize: 15,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Divider(color: Colors.grey.shade200, height: 1),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        children: [
                          _resultadoPartido(
                            "Atlético Madrid",
                            "Real Madrid",
                            "../assets/images/atletico_madrid.png",
                            "../assets/images/real_madrid.png",
                            "2",
                            "1",
                            "Tu porra:  2 - 1",
                            "+2",
                            const Color.fromARGB(185, 51, 168, 21),
                            const Color.fromARGB(255, 18, 148, 1),
                          ),
                          _resultadoPartido(
                            "Atlético Madrid",
                            "Real Madrid",
                            "../assets/images/atletico_madrid.png",
                            "../assets/images/real_madrid.png",
                            "3",
                            "1",
                            "Tu porra:  2 - 1",
                            "+2",
                            const Color(0xFFF5F5F5),
                            const Color(0xFF616161),
                          ),
                          _resultadoPartido(
                            "Atlético Madrid",
                            "Real Madrid",
                            "../assets/images/atletico_madrid.png",
                            "../assets/images/real_madrid.png",
                            "1",
                            "1",
                            "Tu porra:  2 - 1",
                            "+2",
                            const Color(0xFFF5F5F5),
                            const Color(0xFF616161),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8F9FA),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 28),
                            const SizedBox(width: 12),
                            const Text(
                              "Total jornada",
                              style: TextStyle(
                                fontFamily: "grotesk",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "+2 pts",
                              style: TextStyle(
                                fontFamily: "grotesk",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _resultadoPartido(String eLocal, String eVisitante, String escudoLocal, String escudoVisitante, String golesL, String golesV, String textoPorra, String textoPuntos, Color bgPuntos, Color colorPuntos,) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(escudoLocal, height: 32, width: 32),
                  const SizedBox(width: 12),
                  Text(eLocal, style: const TextStyle(fontFamily: "grotesk", fontSize: 15)),
                  const Spacer(),
                  Text(golesL, style: const TextStyle(fontFamily: "grotesk", fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 16),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(escudoVisitante, height: 32, width: 32),
                  const SizedBox(width: 12),
                  Text(eVisitante, style: const TextStyle(fontFamily: "grotesk", fontSize: 15)),
                  const Spacer(),
                  Text(golesV, style: const TextStyle(fontFamily: "grotesk", fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 16),
                ],
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 44),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: bgPuntos.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    textoPorra,
                    style: TextStyle(
                      fontFamily: "grotesk",
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: colorPuntos,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 55,
          height: 65,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: bgPuntos,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            textoPuntos,
            style: TextStyle(
              fontFamily: "grotesk",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: colorPuntos,
            ),
          ),
        ),
      ],
    );
  }
}