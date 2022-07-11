import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class SmallMain extends StatefulWidget {
  SmallMain({Key? key}) : super(key: key);

  @override
  State<SmallMain> createState() => _SmallMainState();
}

class _SmallMainState extends State<SmallMain> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      content: Center(child: Text("smallPage")),
    );
  }
}
