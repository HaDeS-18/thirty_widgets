import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Snackbar'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
          child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
              backgroundColor: WidgetStateProperty.all(Colors.blue)),
          onPressed: () {
            final snackbar = SnackBar(
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {},
                textColor: Colors.blue,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              // padding: EdgeInsets.all(40),
              behavior: SnackBarBehavior.floating,
              duration: const Duration(milliseconds: 1000),
              content: const Text('This is an error'),
              // backgroundColor: Colors.red,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: const Text(
            'Show snackbar',
            style: TextStyle(color: Colors.black),
          ),
        ),
      )),
    );
  }
}
