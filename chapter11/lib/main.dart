import 'package:bloc/bloc.dart';
import 'package:chapter11/default_screen.dart';
import 'package:flutter/material.dart';

import 'bloc/bloc_observer.dart';

void main() {

  Bloc.observer = MyBlocObserver();

  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }

}