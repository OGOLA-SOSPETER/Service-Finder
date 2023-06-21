import 'package:flutter/material.dart';
import 'package:servicefinder/MainPage.dart';
import 'package:servicefinder/models/Notifications.dart';
import 'package:servicefinder/models/forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool passwordVisible = true;

  String? _emailError;

  String? emailValidator(String value) {
    if (value.isEmpty) {
      return "Please enter your email address";
    } else if (!isEmailValid(value)) {
      return "Please enter a valid email address";
    }
    return null;
  }

  bool isEmailValid(String email) {
    // Regular expression to validate email addresses
    final RegExp emailRegex = RegExp(
        r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.)+[a-zA-Z]{2,}$');

    return emailRegex.hasMatch(email);
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/login.png',
                width: 800,
                height: 350,
              ),
              const Text('Welcome Back',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
              Text(
                'Enter your credentials below to continue.',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 23.0),
              Form(
                key: formKey,
                child: Column(children: [
                  TextFormField(
                    controller: _emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    enableSuggestions: true,
                    autofillHints: const [AutofillHints.email],
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      String email = value ??
                          ''; // Assign input email to a string variable
                      String? errorMessage =
                          emailValidator(email); // Validate the email
                      return errorMessage; // Return the error message or null
                    },
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.error,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordcontroller,
                    obscureText: passwordVisible,
                    keyboardType: TextInputType.visiblePassword,
                    enableSuggestions: true,
                    autofillHints: const [AutofillHints.password],
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        borderRadius: BorderRadius.circular(100),
                        child: Icon(
                          passwordVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.error,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ]),
              ),
              const SizedBox(height: 10.0),
              if (_emailError != null)
                Text(
                  _emailError!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              const SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ForgotPassword();
                  }));
                },
                child: const Text(
                  "Forgot Password?",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.deepPurple),
                ),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                width: 400,
                height: 40,
                child: MaterialButton(
                  onPressed: () {
                    String email = _emailcontroller.text;
                    String password = _passwordcontroller.text;

                    setState(() {
                      _emailError = emailValidator(email);
                    });

                    if (email.isNotEmpty &&
                        password.isNotEmpty &&
                        _emailError == null) {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const MyHomePage();
                        }),
                      );
                    } else {
                      if (password.isEmpty && email.isEmpty) {
                        _emailError = "Fields Cannot be Empty.";
                      }
                    }
                  },
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  MouseRegion(
                    onHover: (event) {
                      // Handle tooltip display here
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const Notifications();
                          }),
                        );
                      },
                      child: const Tooltip(
                        message: "Go to the sign-up.",
                        waitDuration: Duration(seconds: 1),
                        showDuration: Duration(seconds: 2),
                        preferBelow: true,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 92, 4, 243),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
