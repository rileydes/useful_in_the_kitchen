import 'package:flutter/material.dart';

class MacrosPage extends StatefulWidget {
  const MacrosPage({Key? key}) : super(key: key);

  @override
  MacrosPageState createState() => MacrosPageState();
}

class MacrosPageState extends State<MacrosPage> with AutomaticKeepAliveClientMixin  {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.purple,
    );
  }

  @override
  bool get wantKeepAlive => true;
}