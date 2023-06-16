import 'package:flutter/material.dart';
import 'package:servicefinder/Login.dart';
import 'package:servicefinder/models/verifyemailotp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

final List<Widget> _screens = [VerifyOtp(), LoginPage()];

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailcontroller = TextEditingController();

    final formKey = GlobalKey<FormState>();

    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset('images/reset.jpg'),
                Padding(padding: EdgeInsets.symmetric()),
                Text(
                  "Forgot Password?",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
                ),
                Text('Enter the Account Email to receive the Reset Code.',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                SizedBox(height: 50),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailcontroller,
                          decoration: InputDecoration(
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            prefixIcon: Icon(Icons.lock_sharp),
                            label: Text("Enter Email Address."),
                            focusedBorder: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: MaterialButton(
                            color: Colors.blueAccent,
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return _screens[0];
                                }),
                              );
                            },
                            child: Text(
                              'Send OTP Code',
                              style: TextStyle(color: Colors.white),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 40,
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return _screens[1];
                                      }),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    size: 26,
                                  )),
                              SizedBox(width: 30),
                              Text(
                                "Back To Login",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
