import 'package:flutter/material.dart';

class Demo1 extends StatelessWidget {
  const Demo1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"),
              fit: BoxFit.fill),
        ),
        child: const Center(
          child: Text("Hey, How are you?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
      ),
    ));
  }
}
