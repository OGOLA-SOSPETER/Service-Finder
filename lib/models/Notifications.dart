import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Notifications"),
        elevation: 2.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 50.0,
            ),
            const Text(
                'Your Notifications for booked jobs Should Appear Here.\n'),
            Image.asset(
              'images/notif.png',
              height: 300,
              width: 300,
            ),
            const Text(
              'Seems You have no current Job Bookings.',
              style: TextStyle(
                  fontSize: 10.5,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
