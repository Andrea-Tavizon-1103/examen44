import 'package:flutter/material.dart';
import 'package:examen1103/pag_inicial.dart';
import 'package:examen1103/expanded.dart';
import 'package:examen1103/PageRouteBuilder.dart';
import 'package:examen1103/navigator.dart';
import 'package:examen1103/FractionallySizedBox.dart';
import 'package:examen1103/PlatformDetect.dart';
import 'package:examen1103/streambuilder.dart';
import 'package:examen1103/pageview.dart';
import 'package:examen1103/animationbuilder.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PI(titulo: 'Pantalla Principal'),
        '/pantalla1': (context) => const ExpandedScreen(),
        '/pantalla2': (context) => const PageRouteBuilderExamen(),
        '/pantalla3': (context) => const Navigator2(),
        '/pantalla4': (context) => const FractionallySizedBoxScreen(),
        '/pantalla5': (context) => const PlatformDetect(),
        '/pantalla6': (context) => const StreamBuilderScreen(),
        '/pantalla7': (context) => const PageViewBuilderScreen(),
        '/pantalla8': (context) => const MyAnimationBuilder(),
      },
    );
  }
}
