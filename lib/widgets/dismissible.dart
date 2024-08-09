import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['Orange', 'Apple', 'Banana', 'Mango'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade800,
        appBar: AppBar(
          title: const Text('Dismissible Package'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(milliseconds: 500),
                      content: Text(fruits[index]),
                      backgroundColor: Colors.red.shade300,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(milliseconds: 1000),
                      content: Text(
                        fruits[index],
                      ),
                      backgroundColor: Colors.green.shade300,
                    ));
                  }
                },
                background: Container(
                  color: Colors.red,
                ),
                secondaryBackground: Container(color: Colors.green),
                key: Key(fruit),
                child: Card(
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                ));
          },
        ));
  }
}
