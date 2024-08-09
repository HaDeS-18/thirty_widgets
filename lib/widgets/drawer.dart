import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://www.wallpaperflare.com/static/361/127/604/berserk-black-kentaro-miura-artwork-wallpaper.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Harsh Agrawal',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('abc@gmail.com'),
                          ],
                        )
                      ],
                    ),
                  )),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared with Me'),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text('Uploads'),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        )),
        backgroundColor: Colors.grey.shade800,
        appBar: AppBar(
          title: const Text('Drawers Widget'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Container(
          child: const Center(
            child: Text('Hello There!!'),
          ),
        ));
  }
}
