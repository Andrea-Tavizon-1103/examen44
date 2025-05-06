import 'package:flutter/material.dart';

class PageRouteBuilderExamen extends StatelessWidget {
  // Cambiado el nombre para evitar conflicto
  const PageRouteBuilderExamen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff63a0ef),
      appBar: AppBar(
        title: const Text('Página Principal'),
        centerTitle: true,
        elevation: 4,
      ),
      body: Center(
        child: MaterialButton(
          color: Color(0xffcf1800),
          child: const Text(
            'Second',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              BouncyPageRoute(
                // Ahora esta clase está definida abajo
                widget: const SecondPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BouncyPageRoute extends PageRouteBuilder {
  // Implementación de la ruta personalizada
  final Widget widget;

  BouncyPageRoute({required this.widget})
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: const Text('Segunda Página'),
        centerTitle: true,
        elevation: 4,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const Center(
        child: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
