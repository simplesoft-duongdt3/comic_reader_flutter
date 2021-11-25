import 'package:flutter/material.dart';

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
          return Container(
            color: _getColor(index),
            child: Center(
              child: Text("$index"),
            ),
          );
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

  Color _getColor(int index) {
    switch (index) {
      case 0:
        return Colors.amber;
      case 1:
        return Colors.blueGrey;
      case 2:
        return Colors.deepOrange;
      default:
        return Colors.white;
    }
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
