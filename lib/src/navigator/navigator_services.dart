import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:postalhub_userclient/pages/home/home.dart';
import 'package:postalhub_userclient/pages/my_parcel/my_parcel.dart';
import 'package:postalhub_userclient/pages/profile_settings/profile_settings.dart';
import 'package:postalhub_userclient/pages/search_parcel/profile_settings.dart';

class AppNavigatorServices extends StatefulWidget {
  const AppNavigatorServices({super.key});

  @override
  State<AppNavigatorServices> createState() => _AppNavigatorServicesState();
}

class _AppNavigatorServicesState extends State<AppNavigatorServices> {
  var _selectedIndex = 0;
  final List<Widget> _windgetOption = <Widget>[
    const Home(),
    const MyParcel(),
    const SearchParcel(),
    const ProfileSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Row(children: [
            Image.asset(
              'assets/images/postalhub_logo.jpg',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
            const Text('  Postal Hub'),
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
          //height: 70,
          clipBehavior: Clip.antiAlias,
          shape: const CircularNotchedRectangle(),
          child: NavigationBar(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (i) => setState(() => _selectedIndex = i),
            destinations: const [
              /// Home
              NavigationDestination(
                label: "Home",
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home_rounded),
              ),
              NavigationDestination(
                label: "My Parcel",
                icon: Icon(Icons.inventory_2_outlined),
                selectedIcon: Icon(Icons.inventory_2_rounded),
              ),
              NavigationDestination(
                label: "Tracker",
                icon: Icon(Icons.search_outlined),
                selectedIcon: Icon(Icons.search_rounded),
              ),
              NavigationDestination(
                label: "Profile",
                icon: Icon(Icons.person_outline_rounded),
                selectedIcon: Icon(Icons.person_rounded),
              ),

              /// Profile
            ],
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            //elevation: 1,
            //shape: const CircleBorder(),
            tooltip: "FAQs - Ask our AI",
            onPressed: () {},
            child: const Icon(Icons.forum_rounded)),
        body: PageTransitionSwitcher(
          transitionBuilder: (child, animation, secondaryAnimation) =>
              SharedAxisTransition(
            transitionType: SharedAxisTransitionType.vertical,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
          child: _windgetOption.elementAt(_selectedIndex),
        ));
  }
}
