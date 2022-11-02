import 'package:flutter/material.dart';

void main() {
  runApp(const UlifeApp());
}

class UlifeApp extends StatelessWidget {
  const UlifeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ulife',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppMain(title: 'Ulife'),
    );
  }
}

class AppMain extends StatefulWidget {
  const AppMain({super.key, required this.title});
  final String title;

  @override
  State<AppMain> createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(),
    );
  }
}
