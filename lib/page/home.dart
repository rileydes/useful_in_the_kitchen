import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin  {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.red,
    );
  }

  @override
  bool get wantKeepAlive => true;
}