import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> with AutomaticKeepAliveClientMixin  {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        color: Theme.of(context).colorScheme.surface,
        );
  }

  @override
  bool get wantKeepAlive => true;
}