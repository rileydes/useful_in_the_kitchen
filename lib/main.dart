import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:useful_in_the_kitchen/page/app.dart';
import 'package:useful_in_the_kitchen/state_managers.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
      create: (context) => PageState(),
        child: const App(),
      )
  );
}