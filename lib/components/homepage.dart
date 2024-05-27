import 'package:flutter/material.dart';
// import 'package:ketabi/components/widgets/bottom_app_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:ketabi/components/screens/home_screen.dart';
import 'package:ketabi/components/screens/user_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 2;
   Widget? _bottomAppBarHandler(int index) {
    if(index == 0) {
      return const HomeScreen();
    } else if(index == 3) {
      return const UserScreen();
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.deepPurple.shade200,
        animationDuration: const Duration(milliseconds: 300),
        height: 50,
        index: index,
        items: const [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home,
              size: 20,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.favorite,
              size: 20,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.shopping_cart,
              size: 20,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.person,
              size: 20,
            ),
          ),
        ],
        onTap: (index) => setState(() {
          this.index = index;
          
        }),
      ),
      body: Center(
        child: _bottomAppBarHandler(index),
      ),
    );
  }
}
