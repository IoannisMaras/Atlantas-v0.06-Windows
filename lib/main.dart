import 'package:flutter/material.dart';
import 'package:flutter_adaptive_ui/flutter_adaptive_ui.dart';

import 'mainWidgets/xlargemain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveBuilder(
        defaultBuilder: (BuildContext context, Screen screen) {
          return Scaffold();
        },
        layoutDelegate: AdaptiveLayoutDelegateWithScreenSize(
          xSmall: (BuildContext context, Screen screen) {
            return XSmall();
          },
          small: (BuildContext context, Screen screen) {
            return const Center(
              child: Text('Small Window'),
            );
          },
          medium: (BuildContext context, Screen screen) {
            return const Center(
              child: Text('Medium Window'),
            );
          },
          large: (BuildContext context, Screen screen) {
            return const Center(
              child: Text('large Window'),
            );
          },
          xLarge: (BuildContext context, Screen screen) {
            return XlargeMain();
          },
        ));
  }
}

class XSmall extends StatelessWidget {
  const XSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('XSmall Window'),
    );
  }
}
