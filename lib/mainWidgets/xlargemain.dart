import 'package:fluent_ui/fluent_ui.dart';

class XlargeMain extends StatefulWidget {
  XlargeMain({Key? key}) : super(key: key);

  @override
  State<XlargeMain> createState() => _XlargeMainState();
}

class _XlargeMainState extends State<XlargeMain> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      content: Center(
        child: Text('XLarge Window test'),
      ),
    );
  }
}
