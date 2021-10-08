import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loggy/loggy.dart';
import 'color_bloc.dart';
import 'home.dart';

// In this example we will not be using our regular project structure to help
// with the understating of the state handler using Bloc

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Basic Bloc sample"),
      ),
      body: BlocProvider(
          create: (_) => ColorBloc(),
          child: const SafeArea(
            child: HomePage(),
          )),
    ),
  ));
}
