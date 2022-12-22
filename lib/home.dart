import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'tabs/home_tab.dart';
import 'tabs/profile_tab.dart';
import 'theme/constant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _viewItem() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (context) {
          return SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 3,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor),
                ),
                const SizedBox(
                  height: 50,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/close.svg",
                      height: 30,
                      color: primaryColor,
                    )),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/images/space.png",
                  height: 300,
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  "Empty over here.\nYou can create a content \nto gain new audiences.",
                  style: Constant.contentEmpty,
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                    height: 60,
                    width: 300,
                    color: buttonColor,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            elevation: 0,
                            backgroundColor: Colors.transparent),
                        onPressed: () {},
                        child: Text(
                          "Create A Content",
                          style: Constant.contentButtonText,
                        )))
              ],
            ),
          );
        });
  }

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
          child: Center(child: _widgetOptions.elementAt(_selectedIndex))),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: bgColor,
          iconSize: 24,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset(
                      "assets/icons/home-fill.svg",
                      color: primaryColor,
                    )
                  : SvgPicture.asset(
                      "assets/icons/home.svg",
                      color: primaryColor,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset(
                      "assets/icons/user-fill.svg",
                      color: primaryColor,
                    )
                  : SvgPicture.asset(
                      "assets/icons/user.svg",
                      color: primaryColor,
                    ),
              label: '',
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 40,
        width: 70,
        color: floatColor,
        child: FloatingActionButton(
          onPressed: _viewItem,
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: SvgPicture.asset(
            "assets/icons/camera.svg",
            color: primaryColor,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
