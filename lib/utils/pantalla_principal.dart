import 'package:flutter/material.dart';
import 'package:porra_dam/pantallas/clasificacion/pantalla_clasificacion.dart';
import 'package:porra_dam/pantallas/jornada/pantalla_jornada.dart';
import 'package:porra_dam/pantallas/resultados/pantalla_resultados.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => Principal();
}

class Principal extends State<PantallaPrincipal> {
  int _indiceSeleccionado = 0;
  
  final List<Widget> _pantallas = [PantallaJornada(), PantallaResultados(), PantallaClasificacion()];

  void _cambiar(int index){
    setState(() {
      _indiceSeleccionado = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _pantallas[_indiceSeleccionado],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceSeleccionado,
        onTap: _cambiar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: "Jornada"
            ),

          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: "Resultados"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: "Clasificaciones"
            )
        ],

      ),
    );
  }
}