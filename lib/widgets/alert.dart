import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alert Dialog'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                _showMyDialog(context);
              },
              child: const Text('Show Alert')),
        ));
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('This is an Alert'),
          backgroundColor: Colors.grey,
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This looks like a job for me'),
                Text('So everybody just follow me')
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: const Text('Apporve')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'))
          ],
        );
      });
}
