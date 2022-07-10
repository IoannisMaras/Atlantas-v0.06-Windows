import 'package:flutter/material.dart';

class XlargeMain extends StatefulWidget {
  XlargeMain({Key? key}) : super(key: key);

  @override
  State<XlargeMain> createState() => _XlargeMainState();
}

class _XlargeMainState extends State<XlargeMain> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('XLarge Window test'),
      ),
    );
  }
}
