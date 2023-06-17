import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text("Recent Job Bookings"),
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          Image.asset('images/history.jpg'),
          SizedBox(height: 20),
          Text(
            'You Don\'t have any past bookings currently',
            style: TextStyle(fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
