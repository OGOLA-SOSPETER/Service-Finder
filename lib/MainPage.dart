import 'package:flutter/material.dart';
import 'package:servicefinder/models/Notifications.dart';
import 'package:servicefinder/Screens/Dash.dart';
import 'package:servicefinder/Screens/Profile.dart';
import 'package:servicefinder/models/Settings.dart';
import 'package:servicefinder/drawers/mainpage_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    ProfileScreen(),
    Notifications(),
    SettingsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return _screens[_currentIndex];
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Dashboard"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 2.0,
        clipBehavior: Clip.hardEdge,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const Notifications();
                }));
              },
              icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.payment)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ProfileScreen();
                  },
                ));
              },
              icon: const Icon(Icons.account_circle_rounded))
        ],
      ),
      drawer: Drawer(backgroundColor: Colors.white, child: const MainDrawer()),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        elevation: 3.0,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, size: 20.0),
            Text(
              "Add",
              style: TextStyle(fontSize: 10.0),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service),
            label: 'History ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.holiday_village),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add_task), label: "Bookings")
        ],
      ),
      body: Center(
        child: DashScreen(),
      ),
    );

    // bottomNavigationBar: BottomNavigationBar(
    //   items: const [
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.home_repair_service_sharp),
    //       label: "Home",
    //     ),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.home_repair_service_sharp), label: "My Jobs"),
    //     BottomNavigationBarItem(icon: Icon(Icons.add_task), label: "Bookings")
    //   ],
    // ),
  }
}
