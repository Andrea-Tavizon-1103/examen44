import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  // Cambiado el nombre de la clase
  const ExpandedScreen({Key? key})
      : super(key: key); // Actualizado el nombre del constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
        centerTitle: true,
        backgroundColor: Color(0xc8e5bd4d), // Cambiado el título
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.pink,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
