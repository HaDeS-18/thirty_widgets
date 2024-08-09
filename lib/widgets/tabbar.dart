import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.green.shade400,
            title: const Text('WhatsApp'),
            bottom: const TabBar(indicatorColor: Colors.black, tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Calls',
              ),
              Tab(
                icon: Icon(Icons.share),
                text: 'Share',
              ),
              Tab(
                icon: Icon(Icons.more),
                text: 'More',
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              Container(
                child: const Center(
                  child: Text(
                    'CHATS',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    'CALLS',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    'SHARE',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    'MORE',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
