import 'package:flutter/material.dart';
import 'package:thirty_widgets/widgets/alert.dart';
import 'package:thirty_widgets/widgets/bottomsheet.dart';
import 'package:thirty_widgets/widgets/dismissible.dart';
import 'package:thirty_widgets/widgets/drawer.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Navigation Widget'),
      //   backgroundColor: Colors.green.shade400,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green.shade400,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
      body: PageView(
        controller: pageController,
        children: const [
          DrawerWidget(),
          BottomSheetWidget(),
          DismissibleWidget(),
          AlertWidget()
        ],
      ),
    );
  }
}
