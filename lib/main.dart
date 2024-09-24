import 'package:color_scheme_tests/scheme.dart';
import 'package:color_scheme_tests/utils.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './screens/button_screen.dart';
import './screens/color_scheme_screen.dart';


void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => MyHomePage(title: "Home Page")),
    GoRoute(path: '/buttons', builder: (context, state) => const ButtonScreen()),
    GoRoute(path: '/color_scheme', builder: (context, state) => const ColorSchemeScreen())
  ]);



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Demos",
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green), useMaterial3: true),
      routerConfig: _router,);
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

     return SingleChildScrollView(child:Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(height: 36),
          OutlinedButton(onPressed: () => context.go('/buttons') , child: Text("Buttons")),
          SizedBox(height:16),
          OutlinedButton(onPressed: () => context.go('/color_scheme') , child: Text("Color Schemes"))


               ],
        ),
      )
    );
  }

  void _incrementCounter() {
    setState(() {
       _counter++;
    });
  }
}


