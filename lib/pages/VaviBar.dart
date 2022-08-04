import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tripo_app/pages/ExplorePage.dart';
import 'package:tripo_app/pages/ProfilePage.dart';
import 'package:tripo_app/providers/auth_provider.dart';

class VaviBar extends StatefulWidget {
  VaviBar({Key? key}) : super(key: key);

  @override
  State<VaviBar> createState() => _VaviBarState();
}

class _VaviBarState extends State<VaviBar> {
  int index = 0;

  final screens = [
    ExplorePage(),
    EditProfilePage()
    // EditProfilePage(),
    // profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,

        // round radius of the bottom navbar
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Colors.transparent,
              labelTextStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
          child: NavigationBar(
              height: 70,
              backgroundColor: Colors.white,
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              selectedIndex: index,
              animationDuration: Duration(seconds: 1),
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              destinations: [
                NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home_filled),
                    label: "Home"),
                NavigationDestination(
                    icon: Icon(Icons.groups_outlined),
                    selectedIcon: Icon(Icons.groups),
                    label: "Groups"),
                NavigationDestination(
                    icon: Icon(Icons.star_border),
                    selectedIcon: Icon(Icons.star),
                    label: "Favorites"),
                // context.read<UserProvider>().user!.image != null
                // ?
                // NavigationDestination(
                //     icon: CircleAvatar(
                //         radius: 15,
                //         backgroundImage: NetworkImage(
                //             '${context.read<UserProvider>().user!
                //             // .image
                //             }'
                //             )
                //             ),
                //     selectedIcon: CircleAvatar(
                //         radius: 15,
                //         backgroundImage: NetworkImage(
                //             '${context.read<UserProvider>().user!
                //             // .image
                //             }')),
                //     label: "Profile")
                // :
                NavigationDestination(
                    icon: Icon(Icons.account_circle_outlined),
                    selectedIcon: Icon(Icons.account_circle_rounded),
                    label: "Profile")
              ]),
        ),
        // backgroundColor: Colors.transparent,

        body: IndexedStack(index: index, children: screens));
  }
}
