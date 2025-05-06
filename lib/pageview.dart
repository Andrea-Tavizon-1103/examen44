import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PageViewBuilderScreen(),
  ));
}

class PageViewBuilderScreen extends StatefulWidget {
  const PageViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<PageViewBuilderScreen> createState() => _PageViewBuilderScreenState();
}

class _PageViewBuilderScreenState extends State<PageViewBuilderScreen> {
  final List<Color> _colors = [
    Colors.orange,
    Colors.purple,
    Colors.redAccent,
    Colors.teal,
    Colors.blue,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View Builder'),
        backgroundColor: const Color(0xffb73a3a),
        centerTitle: true,
      ),
      body: PageView.builder(
        physics: const ClampingScrollPhysics(), // Física de scroll optimizada
        controller: PageController(viewportFraction: 1.0),
        scrollDirection: Axis.vertical,
        itemCount: _colors.length,
        itemBuilder: (context, index) {
          return Container(
            color: _colors[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Page no',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      fontSize: 30,
                      color: _colors[index],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
