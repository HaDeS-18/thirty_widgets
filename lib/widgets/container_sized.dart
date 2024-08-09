import 'package:flutter/material.dart';

// ignore: camel_case_types
class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Container and SizedBox'),
        ),
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    //shape: BoxShape.circle),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 5)]),
                height: 100,
                width: 100,
                child: Center(child: Container(color: Colors.redAccent))
                //Text('Hello', style: TextStyle(fontSize: 30))),
                )));
  }
}
