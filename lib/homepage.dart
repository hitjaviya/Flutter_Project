import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiproject/expenses.dart';
import 'package:uiproject/firstpage.dart';
import 'package:uiproject/homepagewidget.dart';

import 'card_.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int selectedindex = 0;
  static const List<Widget> pagelist = <Widget>[
    Firstpage(),
    expenses(),
    Homepage_(),
    MyWidget(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagelist[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          type: BottomNavigationBarType.shifting,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Colors.deepPurple),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(Icons.wallet, color: Colors.deepPurple), label: ""),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.add, color: Colors.white),
                  ),
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chart_pie, color: Colors.deepPurple),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_outlined, color: Colors.deepPurple),
                label: ""),
          ],
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
