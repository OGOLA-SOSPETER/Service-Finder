// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class NewBooking extends StatefulWidget {
  const NewBooking({super.key});

  @override
  State<NewBooking> createState() => _NewBookingState();
}

class _NewBookingState extends State<NewBooking> {
  bool pickDate = false;
  bool show_DatePicker = false; // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book New'),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text('Book your Service Provider.'),
          Container(
            height: 500,
            width: 600,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 250, 250),
                borderRadius: BorderRadius.circular(1.8)),
            child: Column(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        show_DatePicker = !show_DatePicker;
                      });
                    },
                    child: Text('Select service Date')),
                Visibility(visible: show_DatePicker, child: DatePicker()),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class DatePicker extends StatelessWidget {
  const DatePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DatePickerDialog(
        initialDate: DateTime.timestamp(),
        firstDate: DateTime.utc(2023, 6, 18, 00, 00, 00),
        lastDate: DateTime.utc(2030, 12, 20, 00, 00, 00),
        initialCalendarMode: DatePickerMode.year,
        keyboardType: TextInputType.datetime,
        currentDate: DateTime.now(),
        initialEntryMode: DatePickerEntryMode.calendarOnly,
      ),
    );
  }
}
