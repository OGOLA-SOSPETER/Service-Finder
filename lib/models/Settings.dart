import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Page"),
        centerTitle: true,
        elevation: 2,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/sett.jpg',
              width: 300,
              height: 300,
            ),
            Padding(padding: EdgeInsetsDirectional.only(top: 2.0)),
            const SizedBox(
              child: Text(
                "Settings in progress.\n Check back soon.",
                style: TextStyle(
                    fontFamily: "Montserat",
                    fontSize: 18,
                    color: Color.fromARGB(255, 4, 93, 116),
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
