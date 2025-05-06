import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

class PlatformDetect extends StatelessWidget {
  const PlatformDetect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Valores simulados para web (para mostrar el layout como en tu imagen)
    bool isIOS = kIsWeb ? true : Platform.isIOS;
    bool isAndroid = kIsWeb ? false : Platform.isAndroid;
    bool isMacOS = kIsWeb ? false : Platform.isMacOS;
    bool isWindows = kIsWeb ? false : Platform.isWindows;
    bool isLinux = kIsWeb ? false : Platform.isLinux;

    return Scaffold(
      appBar: AppBar(
        title: const Text('PlataformDetect'),
        centerTitle: true,
        backgroundColor: Color(0xff7881f4),
        // Título exacto como en tu imagen
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('IaDS: $isIOS',
                style: const TextStyle(
                    fontSize: 20)), // Nota: "IaDS" parece ser un typo de "iOS"
            const SizedBox(height: 20.0),
            Text('IsAndroid: $isAndroid', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20.0),
            Text('isMacOS: $isMacOS', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20.0),
            Text('IdWindows: $isWindows',
                style:
                    const TextStyle(fontSize: 20)), // "IdWindows" parece typo
            const SizedBox(height: 20.0),
            Text('iid: true: $isLinux',
                style: const TextStyle(
                    fontSize: 20)), // Ajustado para coincidir con tu formato
          ],
        ),
      ),
    );
  }
}
