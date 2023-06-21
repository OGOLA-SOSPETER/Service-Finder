import 'package:flutter/material.dart';
import 'package:servicefinder/displays/cards/new_booking.dart';
import 'package:servicefinder/models/Notifications.dart';
import 'package:servicefinder/Screens/Dash.dart';
import 'package:servicefinder/drawers/mainpage_drawer.dart';
import 'package:servicefinder/models/Settings.dart';
import 'package:servicefinder/models/bookings.dart';
import 'package:servicefinder/models/history.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [History(), Notifications(), Bookings()];

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
        centerTitle: true,
        title: const Text("Main Dashboard"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 2.0,
        clipBehavior: Clip.hardEdge,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const SettingsPage();
                }));
              },
              icon: const Icon(Icons.payment)),
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const Notifications();
                }));
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ))
        ],
      ),
      drawer: Drawer(backgroundColor: Colors.white, child: const MainDrawer()),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const NewBooking();
          }));
        },
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
        selectedItemColor: const Color.fromARGB(255, 75, 73, 73),
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
      body: Container(
        child: DashScreen(),
      ),
    );
  }
}
