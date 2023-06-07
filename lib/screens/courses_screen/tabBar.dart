import 'package:flutter/material.dart';
//import 'package:vertical_tab_bar_view/vertical_tab_bar_view.dart';

class CoursesTabBar extends StatelessWidget {
  const CoursesTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            bottom:  const TabBar(
              
              tabs: [
                Tab(icon: Icon(Icons.notifications_active_rounded, color: Colors.black,)),
                Tab(icon: Icon(Icons.menu_book_rounded,color: Colors.black,)),
              ],
            ),
            title: const Text('Курсы', style: TextStyle(fontFamily: "Montserrat", fontSize: 22, color: Colors.black),),
          ),
          body:    //  TabBarView(  <--- replace with **VerticalTabBarView**
            Column(
            children: const [
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
    );
  }
}