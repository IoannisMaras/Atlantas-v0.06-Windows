import 'package:fluent_ui/fluent_ui.dart';

class LargeMain extends StatefulWidget {
  LargeMain({Key? key}) : super(key: key);

  @override
  State<LargeMain> createState() => _LargeMainState();
}

class _LargeMainState extends State<LargeMain> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      content: Center(child: Text("LargePage")),
    );
  }
}
