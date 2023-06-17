import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Profile",
          style: TextStyle(fontStyle: FontStyle.normal, color: Colors.white),
        ),
        centerTitle: true,
        actions: const <Widget>[
          Text(
            "Edit",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
