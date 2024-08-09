import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: SizedBox(
                  height: 400,
                  //color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                          child: Stack(
                        children: [
                          Positioned(
                              child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://wallhalla.com/thumbs/79'))),
                            height: 350,
                          )),
                          Positioned(
                              top: 40,
                              left: 20,
                              child: Container(
                                  child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ))),
                          Positioned(
                              top: 40,
                              right: 20,
                              child: Container(
                                  child: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                              )))
                        ],
                      )),
                      Positioned(
                          bottom: 0,
                          right: 24,
                          child: Container(
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/736x/96/80/8a/96808a16ee97f78fa838d2539d2a285c.jpg'),
                              radius: 50,
                            ),
                          ))
                    ],
                  ),
                ))
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This is a random description',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade200),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('32', Icons.upload),
                  rowIconText('84', Icons.message),
                  rowIconText('295', Icons.face),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in"),
            )
          ],
        ),
      ),
    );
  }
}

Widget rowIconText(String text, IconData icon) {
  return Row(
    children: [
      Text(
        text,
        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        width: 5,
      ),
      Icon(icon),
    ],
  );
}
