//import 'package:flutter/material.dart';
import 'package:atlantas_windows/mainWidgets/largemain.dart';
import 'package:atlantas_windows/mainWidgets/mediummain.dart';
import 'package:atlantas_windows/mainWidgets/smallmain.dart';
import 'package:flutter_adaptive_ui/flutter_adaptive_ui.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'mainWidgets/xlargemain.dart';
import 'mainWidgets/largemain.dart';
import 'mainWidgets/mediummain.dart';
import 'mainWidgets/smallmain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         accentColor: Colors.orange,
        brightness: Brightness.dark,
        glowFactor: 2.0,
        theme.accentColor?.withOpacity(0.2),
       
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
          return ScaffoldPage(
            content: Center(
              child: Icon(
                FluentIcons.account_browser,
                color: Colors.orange,
              ),
            ),
          );
        },
        layoutDelegate: AdaptiveLayoutDelegateWithScreenSize(
          xSmall: (BuildContext context, Screen screen) {
            return XSmall();
          },
          small: (BuildContext context, Screen screen) {
            return SmallMain();
          },
          medium: (BuildContext context, Screen screen) {
            return MediumMain();
          },
          large: (BuildContext context, Screen screen) {
            return LargeMain();
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
