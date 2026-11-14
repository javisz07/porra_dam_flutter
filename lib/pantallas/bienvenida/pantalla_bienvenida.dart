
import 'package:flutter/material.dart';
import 'package:porra_dam/utils/pantalla_principal.dart';

class PantallaBienvenida extends StatefulWidget {
  const PantallaBienvenida({
    super.key,
    });

  @override
  State<PantallaBienvenida> createState() => _PantallaBienvenida();
}

class _PantallaBienvenida extends State<PantallaBienvenida> {
  String _alias = "";
  String _codGrupo = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // En el stack se van apilando los widgets desde el primero al último
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

          Positioned(
            left: 24,
            right: 24,
            bottom: 70,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, //alinear el column al inicio
              children: [
                Row(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment
                      .baseline, //alinear por la base del texto
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "Porra",
                      style: TextStyle(
                        fontFamily: 'grotesk',
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "DAM",
                      style: TextStyle(
                        fontFamily: 'grotesk',
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFc1eed7),
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, //alinear el column al inicio
                  children: [
                    Text(
                      "Pronostica los partidos de cada jornada\ny compite con tu clase",
                      style: TextStyle(
                        fontFamily: 'grotesk',
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "¿Quién acertará más?",
                      style: TextStyle(
                        fontFamily: 'grotesk',
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10), //separador

                SizedBox(
                  width: double.infinity,
                  height: 281,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        spacing: 10, //espacio entre las cajas del column
                        crossAxisAlignment: CrossAxisAlignment
                            .start, //alinear el column al inicio
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //alinear el column al inicio
                            spacing: 3, //espacio entre las cajas del column
                            children: [
                              Text(
                                "TU ALIAS",
                                style: TextStyle(
                                  fontFamily: "grotesk",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF646770),
                                ),
                              ),

                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Escribe tu nombre o alias", //el texto se queda fijo
                                  prefixIcon: Padding(
                                    // metemos el icono dentro del input con perfix icon
                                    padding: const EdgeInsets.only(
                                      left: 14,
                                      right: 4,
                                    ),
                                    child: const Icon(
                                      Icons.person_outline,
                                      color: Color(0xFF5b6066),
                                      size: 32,
                                    ),
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 200.0,
                                    ),
                                  ),
                                ),
                                onChanged: (texto) =>
                                    setState(() => _alias = texto),
                                keyboardType: TextInputType.name,
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //alinear el column al inicio
                            spacing: 3, //espacio entre las cajas del column
                            children: [
                              Text(
                                "CÓDIGO DEL GRUPO",
                                style: TextStyle(
                                  fontFamily: "grotesk",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF646770),
                                ),
                              ),

                              TextField(
                                decoration: InputDecoration(
                                  hintText: "p. ej. 1A - DAM - 2026", //el texto se queda fijo
                                  prefixIcon: Padding(
                                    // metemos el icono dentro del input con perfix icon
                                    padding: const EdgeInsets.only(
                                      left: 14,
                                      right: 4,
                                    ),
                                    child: const Icon(
                                      Icons.group_outlined,
                                      color: Color(0xFF5b6066),
                                      size: 32,
                                    ),
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 200.0,
                                    ),
                                  ),
                                ),
                                onChanged: (texto) =>
                                    setState(() => _codGrupo = texto),
                                keyboardType: TextInputType.name,
                              ),
                            ],
                          ),

                          SizedBox(height: 5),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PantallaPrincipal(),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, //alinear horizontalmente al medio
                              spacing: 5, //saparar texto y flecha
                              children: [
                                Text(
                                  "Entrar en la porra",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "grotesk",
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}