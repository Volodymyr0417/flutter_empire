import 'package:empire/empire.dart';

import 'package:flutter/material.dart';

import 'application_view_model.dart';
import 'counter_page.dart';
import 'counter_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empire State Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Empire(
        ApplicationViewModel(),
        child: CounterPage(
          title: 'Empire State',
          viewModel: CounterViewModel(),
        ),
      ),
    );
  }
}
