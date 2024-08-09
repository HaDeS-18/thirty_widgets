import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text('Button'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(const EdgeInsets.all(50)),
                  elevation: WidgetStateProperty.all(30),
                  overlayColor: WidgetStateProperty.all(Colors.blue),
                  backgroundColor: WidgetStateProperty.all(Colors.yellow),
                ),
                onPressed: () {},
                child: const Text(
                  'Fuck Vit',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 90,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: WidgetStateProperty.all(40),
                      overlayColor: WidgetStateProperty.all(Colors.greenAccent),
                      backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {
                    print('Hello Mothefuckers');
                  },
                  child: const Text(
                    'Oil Up nigger',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            )
          ]),
        ));
  }
}
