import 'package:flutter/material.dart';

class FractionallySizedBoxScreen extends StatelessWidget {
  const FractionallySizedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fractionally SizedBox'),
        centerTitle:
            true, // Corregido: debe estar dentro de AppBar y en minúscula
        backgroundColor: const Color(0xfff25b5b), // Color del AppBar
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 100,
          color: Colors.red.withOpacity(0.4),
          alignment: Alignment.topRight,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.8,
            child: Container(
              color: Colors.red,
              child: const Center(
                child: Text(
                  '50% ancho\n80% alto',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor:
          const Color(0xffffffff), // Fondo del Scaffold si lo deseas
    );
  }
}
