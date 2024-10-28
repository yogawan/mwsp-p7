import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'), // Provide a title here
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: Center(
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.red,
                )
              )
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              child: Center(
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.red,
                )
              )
            ),
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: Center(
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.orange,
                )
              )
            ),
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: Center(
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.indigo,
                )
              )
            ),
          ],
        ),
      )
    );
  }
}
