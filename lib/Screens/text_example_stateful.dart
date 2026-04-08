import 'package:flutter/material.dart';

class TextExampleStateful extends StatefulWidget {
  const TextExampleStateful({super.key});

  @override
  State<TextExampleStateful> createState() => _TextExampleStatefulState();
}

class _TextExampleStatefulState extends State<TextExampleStateful> {
  int counter = 1;

  void counterAdd() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter ${counter}'),
        ElevatedButton(
          onPressed: () {
            counterAdd();
          },
          child: Text('Click Me'),
        )
      ],
    );
  }
}