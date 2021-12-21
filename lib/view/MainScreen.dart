import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracking_works/shared/colors_value.dart';
import 'package:tracking_works/view/HomePageView.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [HomePageView()];
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageView(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedLabelStyle: GoogleFonts.spartan(),
        unselectedLabelStyle: GoogleFonts.spartan(),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 22,
                color: (_currentPage == 0)
                    ? ColorsValue.colorBottomNav
                    : Colors.grey,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                'assets/icons/tasks_icon.svg',
                width: 22,
                color: (_currentPage == 1)
                    ? ColorsValue.colorBottomNav
                    : Colors.grey,
              ),
            ),
            label: 'Task',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                'assets/icons/app_icon.svg',
                width: 22,
                color: (_currentPage == 2)
                    ? ColorsValue.colorBottomNav
                    : Colors.grey,
              ),
            ),
            label: 'App',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                'assets/icons/nontification.svg',
                width: 22,
                color: (_currentPage == 3)
                    ? ColorsValue.colorBottomNav
                    : Colors.grey,
              ),
            ),
            label: 'Notice',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                'assets/icons/profilsvg.svg',
                width: 22,
                color: (_currentPage == 4)
                    ? ColorsValue.colorBottomNav
                    : Colors.grey,
              ),
            ),
            label: 'Profil',
          ),
        ],
        currentIndex: _currentPage,
        onTap: _onTappedIndex,
      ),
    );
  }

  void _onTappedIndex(int index) {
    setState(() {
      _currentPage = index;
    });
  }
}
