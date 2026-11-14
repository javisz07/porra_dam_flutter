import 'package:flutter/material.dart';

class HeaderPorra extends StatelessWidget {
  const HeaderPorra({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: const Icon(Icons.menu, size: 30, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
        const Text(
          "Porra DAM",
          style: TextStyle(
            fontFamily: "grotesk",
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        Container(
          width: 60,
          height: 25,
          decoration: BoxDecoration(
            color: const Color(0xFFc1eed7),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "36",
                style: TextStyle(
                  fontFamily: "grotesk",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "pts",
                style: TextStyle(
                  fontFamily: "grotesk",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 4, 136, 11),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}