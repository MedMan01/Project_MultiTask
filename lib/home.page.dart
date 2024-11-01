import 'package:flutter/material.dart';
import 'package:project_multitask/Screens/cards.view.dart';
import 'package:project_multitask/Screens/home.view.dart';
import 'package:project_multitask/Screens/login.view.dart';
import 'package:project_multitask/Screens/profile.view.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int CurrentIndex = 0;
  void ChangePage(int selectIndex) {
    setState(() {
      CurrentIndex = selectIndex;
    });
  }

  List<Widget> pages = [HomeView(), LoginView(), CardsView(), Profileview()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "Multitasks application",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(
            16.0,
          ),
          child: IndexedStack(index: CurrentIndex, children: pages),
        )),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigo,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: CurrentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: "login"),
            BottomNavigationBarItem(icon: Icon(Icons.map), label: "Cards"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: ChangePage,
        ));
  }
}
