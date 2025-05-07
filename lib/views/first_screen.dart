import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final Function setFirstScreen;
  const FirstScreen({
    Key? key,
    required this.setFirstScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pantalla'),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () =>
              setFirstScreen(true), // Usamos el mismo método de navegación
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'First Screen',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: const Text('Ir a la segunda pantalla'),
              onPressed: () => setFirstScreen(true),
            ),
          ],
        ),
      ),
    );
  }
}
