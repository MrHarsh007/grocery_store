import 'package:flutter/material.dart';
import 'package:grocery_store/demo2.dart';
import 'package:grocery_store/splashScreen.dart';

const Color kLightGreen = Color.fromRGBO(9, 199, 5, 0.6);
Color appBarColor = Colors.white.withOpacity(0.95);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: const TextTheme(
              titleMedium:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black))),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
