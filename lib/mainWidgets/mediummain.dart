import 'package:fluent_ui/fluent_ui.dart';

class MediumMain extends StatefulWidget {
  MediumMain({Key? key}) : super(key: key);

  @override
  State<MediumMain> createState() => _MediumMainState();
}

class _MediumMainState extends State<MediumMain> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      content: Center(child: Text("MediumPage")),
    );
  }
}
