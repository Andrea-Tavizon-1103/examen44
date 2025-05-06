import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatefulWidget {
  const StreamBuilderScreen({Key? key}) : super(key: key);

  @override
  State<StreamBuilderScreen> createState() => _StreamBuilderScreenState();
}

// FAKE FIREBASE STREAM
Stream<int> generateStream = (() async* {
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 4;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 5;
})();

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder'),
        centerTitle: true,
        backgroundColor: Color(0xfff9de8c),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            } else if (snapshot.hasError) {
              return const Text('Error');
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 40),
              );
            }
          },
        ),
      ),
    );
  }
}
