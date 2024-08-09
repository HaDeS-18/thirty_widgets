import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Apple', 'Banana', 'Mango'];
  Map fruits_person = {
    'fruits': ['Orange', 'Apple', 'Banana', 'Mango'],
    'person': ['Nigga 1', 'Nigga 2', 'Nigga 3', 'Certified Mango Eater']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List and Grid'),
          backgroundColor: Colors.blue,
          elevation: 8,
        ),
        body: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text(fruits[index]),
              ),
            );
          },
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3,
          //       crossAxisSpacing: 20,
          //       mainAxisSpacing: 20,
          //       //childAspectRatio: 1.1,
          //       mainAxisExtent: 100),
          //   children: [
          //     Card(
          //       child: Text(
          //         'Nigga 1',
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //     Card(
          //       child: Text('Nigga 2'),
          //     ),
          //     Card(
          //       child: Text('Nigga 3'),
          //     ),
          //     Card(
          //       child: Text('Nigga 4'),
          //     ),
          //     Card(
          //       child: Text('Nigga 5'),
          //     ),
          //     Card(
          //       child: Text('Nigga 6'),
          //     ),
          //   ],
        ));
  }
}
