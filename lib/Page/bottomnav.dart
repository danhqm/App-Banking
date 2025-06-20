import 'package:app_banking/Page/home.dart';
import 'package:app_banking/Page/mycards.dart';
import 'package:app_banking/Page/settings.dart';
import 'package:app_banking/Page/statistics.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {

  final List<Widget> pages = [
    const Home(),
    const Mycards(),
    const Statistics(),
    const Settings(),
  ];

  int currentPage = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        selectedItemColor: Color(0xFF0066FF),
        unselectedItemColor: Color(0xFF8E8E93),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
            ),
              icon: Icon(
                  Icons.home,
              ),
            label: 'Home'
            ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.credit_card_sharp,
            ),
            icon: Icon(
              Icons.credit_card_sharp,
              ),
            label: 'My Cards'
            ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.pie_chart_sharp,
            ),
            icon: Icon(
              Icons.pie_chart_sharp,
              ),
            label: 'Statistics',
            ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.settings,
            ),
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
          ]
        ),
      );
  }
}
