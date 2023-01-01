import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> with AutomaticKeepAliveClientMixin  {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.green,
    );
  }

  @override
  bool get wantKeepAlive => true;
}