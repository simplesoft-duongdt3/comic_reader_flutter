import 'package:flutter/material.dart';

import 'home_tab_home.dart';
import 'home_tab_library.dart';
import 'profile_tab.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _currentTab = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomBar(),
      body: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const HomeTabHomeWidget();
          } else if (index == 1) {
            return const HomeTabLibraryWidget();
          } else {
            return const ProfileTabWidget();
          }
        },
        itemCount: 3,
        onPageChanged: (index) {
          setState(() {
            _currentTab = index;
          });
        },
      ),
    );
  }

  BottomNavigationBar _buildBottomBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_books), label: "Library"),
        BottomNavigationBarItem(icon: Icon(Icons.face), label: "Profile"),
      ],
      onTap: (index) {
        setState(() {
          _currentTab = index;
          _pageController.animateToPage(
            _currentTab,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        });
      },
      currentIndex: _currentTab,
    );
  }
}
