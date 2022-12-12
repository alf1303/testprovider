import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprovider/providers/provider1.dart';
import 'package:testprovider/providers/provider2.dart';

import 'control_bar.dart';
import 'main_area.dart';
import 'slider_area.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // PROVIDERS
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Provider1>(create: (_) => Provider1()),
        ChangeNotifierProvider<Provider2>(create: (_) => Provider2()),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Provider Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DEmo")),
      body: Column(
        children: [
          MainArea(), // text fields
          ControlBar(), // buttons section
          SliderBar() //slider section
        ],
      ),
    );
  }
}
