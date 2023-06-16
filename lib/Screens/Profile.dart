import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(218, 3, 145, 50),
        title: const Text(
          "Profile",
          style: TextStyle(fontStyle: FontStyle.normal, color: Colors.white),
        ),
        centerTitle: true,
        actions: const <Widget>[
          Text(
            "Edit",
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 20.0),
          height: 80,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 8, 131, 63),
              image: DecorationImage(
                image: AssetImage('images/jobs.png'),
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken),
              )),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "John Doe",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
              Text(
                "johndoe@gmail.com",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                    fontSize: 10.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
