import 'package:flutter/material.dart';
import 'package:loading_progress/loading_progress.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onTapStartBtn,
              child: const Text('Start Loading Progress'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: onTapStartCustomLoadingProgressBtn,
              child: const Text('Start Custom Loading Progress'),
            ),
          ],
        ),
      ),
    );
  }

  onTapStartBtn() async {
    LoadingProgress.start(context);
    await Future.delayed(const Duration(seconds: 3));
    LoadingProgress.stop(context);
  }

  onTapStartCustomLoadingProgressBtn() async {
    LoadingProgress.start(
      context,
      gifOrImagePath: 'assets/loading.gif',
    );
    await Future.delayed(const Duration(seconds: 3));
    LoadingProgress.stop(context);
  }
}
