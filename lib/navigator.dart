import 'package:flutter/material.dart';

import 'views/first_screen.dart';
import 'views/second_screen.dart';

class Navigator2 extends StatefulWidget {
  const Navigator2({Key? key}) : super(key: key);

  @override
  State<Navigator2> createState() => _Navigator2State();
}

class _Navigator2State extends State<Navigator2> {
  bool isFirstScreen = true;

  setFirstScreen(screenValue) {
    setState(() {
      isFirstScreen = screenValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigator 2.0',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Navigator(
        pages: [
          MaterialPage(child: FirstScreen(setFirstScreen: setFirstScreen)),
          if (isFirstScreen == false)
            MaterialPage(child: SecondScreen(setFirstScreen: setFirstScreen)),
        ],
        onPopPage: (route, result) {
          bool popStatus = route.didPop(result);
          if (popStatus == true) setFirstScreen(true);
          return popStatus;
        },
      ),
    );
  }
}
