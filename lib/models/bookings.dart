import 'package:flutter/material.dart';

class Bookings extends StatefulWidget {
  const Bookings({super.key});

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text("Active Bookings"),
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          SizedBox(
            height: 300,
            width: 500,
            child: Image.asset('images/book.jpg'),
          ),
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
