import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text(
            'Bottom Sheet Widget',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.cyan)),
              onPressed: () {
                showModalBottomSheet(
                    enableDrag: true,
                    isDismissible: false,
                    elevation: 0,
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    context: context,
                    builder: (context) {
                      return const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('Watermelon'),
                            subtitle: Text('Nigga 1'),
                          ),
                          ListTile(
                            title: Text('Watermelon'),
                            subtitle: Text('Nigga 1'),
                          ),
                          ListTile(
                            title: Text('Watermelon'),
                            subtitle: Text('Nigga 1'),
                          ),
                          ListTile(
                            title: Text('Watermelon'),
                            subtitle: Text('Nigga 1'),
                          ),
                          ListTile(
                            title: Text('Watermelon'),
                            subtitle: Text('Nigga 1'),
                          ),
                        ],
                      );
                    });
              },
              child: const Text(
                'Show Bottom Sheet',
                style: TextStyle(color: Colors.black),
              )),
        ));
  }
}
