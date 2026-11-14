import 'package:flutter/material.dart';
import 'package:porra_dam/utils/header.dart';

class PantallaClasificacion extends StatelessWidget {
  const PantallaClasificacion({super.key});

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
                                "Clasificación",
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
                                    Text("General", style: TextStyle(fontFamily: "grotesk")),
                                    SizedBox(width: 4),
                                    Icon(Icons.keyboard_arrow_down, size: 18),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Text(
                                "#",
                                style: TextStyle(
                                  fontFamily: "grotesk",
                                  fontSize: 13,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Text(
                                "Participante",
                                style: TextStyle(
                                  fontFamily: "grotesk",
                                  fontSize: 13,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "Puntos",
                                style: TextStyle(
                                  fontFamily: "grotesk",
                                  fontSize: 13,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Divider(color: Colors.grey.shade200, height: 1),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        children: [
                          _filaClasificacion("1", "L", "Javi s", "45", const Color(0xFFFFB74D), const Color(0xFFFFD54F), Colors.white, Colors.transparent, true, false),
                          _filaClasificacion("2", "P", "Cristian", "41", const Color(0xFF90CAF9), const Color(0xFFE0E0E0), Colors.white, Colors.transparent, false, false),
                          _filaClasificacion("3", "N", "Gonzalo", "40", const Color(0xFFF48FB1), const Color(0xFFFFAB91), Colors.white, Colors.transparent, false, false),
                        ],
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

  Widget _filaClasificacion(
    String posicion,
    String inicial,
    String nombre,
    String puntos,
    Color colorAvatar,
    Color bgPosicion,
    Color colorTextoPosicion,
    Color bgFila,
    bool muestraCorona,
    bool esUsuarioDestacado,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: bgFila,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: bgPosicion,
              shape: BoxShape.circle,
            ),
            child: Text(
              posicion,
              style: TextStyle(
                fontFamily: "grotesk",
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: colorTextoPosicion,
              ),
            ),
          ),
          const SizedBox(width: 16),
          CircleAvatar(
            radius: 16,
            backgroundColor: colorAvatar,
            child: Text(
              inicial,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            nombre,
            style: TextStyle(
              fontFamily: "grotesk",
              fontSize: 16,
              fontWeight: esUsuarioDestacado ? FontWeight.bold : FontWeight.normal,
              color: Colors.black,
            ),
          ),
          if (muestraCorona) ...[
            const SizedBox(width: 6),
            const Icon(Icons.emoji_events, color: Color(0xFFFFB300), size: 18),
          ],
          const Spacer(),
          Text(
            puntos,
            style: const TextStyle(
              fontFamily: "grotesk",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}