import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:useful_in_the_kitchen/page/app.dart';
import 'package:useful_in_the_kitchen/data/state_managers.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
      create: (context) => AppState(context: context),
        child: const App(),
      )
  );
}