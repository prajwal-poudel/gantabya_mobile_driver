import 'package:flutter/material.dart';
import 'package:gantabya_app/presentation/account/account.dart';
import 'package:provider/provider.dart';

import '../../app/provider/user_provider/user_provider.dart';
import '../home/home_page.dart';
import '../login/login.dart';
import '../register/register.dart';
import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class LandingPage extends StatefulWidget {
  static const String route = "/landing";
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  List<Widget> screens = [HomePage(), LoginPage(), AccountPage()];

  @override
  void initState() {
    getUserInformation();
    super.initState();
  }

  getUserInformation() {
    context.read<UserProvider>().getLogedInUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "Bookings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: "Account"),
        ],
        // backgroundColor: ColorManager.black,
        selectedItemColor: ColorManager.primary,
        unselectedItemColor: ColorManager.black,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        elevation: AppSize.s2_5,
      ),
    );
  }
}
