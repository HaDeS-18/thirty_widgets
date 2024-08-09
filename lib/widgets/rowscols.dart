import 'package:flutter/material.dart';

class Rowscols extends StatelessWidget {
  const Rowscols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    //var h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rows and Columns'),
        ),
        body: Container(
            height: 400,
            width: w,
            color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.red,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.blue,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.green,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.grey,
                ),
              ],
            )));
  }
}
