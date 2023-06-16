import 'package:flutter/material.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  TextEditingController _emailcontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _isOTPSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _isOTPSent ? _buildOTPSentCard() : _buildEnterEmailCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildEnterEmailCard() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/send_email.jpg'),
        Padding(padding: EdgeInsets.only(top: 20)),
        Text(
          'An OTP Code has been sent to skylinersystemdevelopers@gmail.com with a link to verify your account. If you have not received the email in a few minutes, please check your spam/junk folder.',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 50),
        Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailcontroller,
                decoration: InputDecoration(
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  prefixIcon: Icon(Icons.lock_sharp),
                  labelText: "Enter Email Address",
                  focusedBorder: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  String email = value ?? '';
                  if (email.isEmpty) {
                    return 'Please enter your email address';
                  }
                  // Add additional email validation if needed
                  return null;
                },
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 400,
                height: 50,
                child: MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Resend OTP logic goes here
                    }
                  },
                  child: Text(
                    'Resend OTP Code',
                    style: TextStyle(color: Colors.white),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 300,
                height: 50,
                child: MaterialButton(
                  color: const Color.fromARGB(255, 100, 153, 245),
                  onPressed: () {
                    setState(() {
                      _isOTPSent = true;
                    });
                  },
                  child: Text(
                    "Enter OTP Code",
                    style: TextStyle(color: Colors.white),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOTPSentCard() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Enter the OTP  sent to your email address.',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OTPWidget(digit: "*"),
            OTPWidget(digit: "*"),
            OTPWidget(digit: "*"),
            OTPWidget(digit: "*"),
            OTPWidget(digit: "*")
          ],
        ),
        SizedBox(height: 30),
        SizedBox(
          width: 300,
          height: 50,
          child: MaterialButton(
            color: Colors.blueAccent,
            onPressed: () {
              // Validate OTP logic goes here
              setState(() {});
            },
            child: Text(
              'Verify OTP',
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
                  setState(() {
                    _isOTPSent = false;
                  });
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 26,
                ),
              ),
              SizedBox(width: 30),
              Text(
                "Resend OTP",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OTPWidget extends StatelessWidget {
  final String digit;

  const OTPWidget({Key? key, required this.digit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          digit,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class VerifyOtp extends StatefulWidget {
//   const VerifyOtp({super.key});

//   @override
//   State<VerifyOtp> createState() => _VerifyOtpState();
// }

// class _VerifyOtpState extends State<VerifyOtp> {
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController _emailcontroller = TextEditingController();

//     final formKey = GlobalKey<FormState>();

//     return Container(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.only(top: 40, left: 15, right: 15),
//             child: Column(
//               children: [
//                 Image.asset('images/send_email.jpg'),
//                 Padding(padding: EdgeInsets.only(top: 20)),
//                 Text(
//                   "Verify OTP",
//                   style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
//                 ),
//                 Text(
//                   'An OTP Code has been sent to skylinersystemdevelopers@gmail.com with a link to verify your account. If you have not received the email in a few minutes, please check your spam/junk folder.',
//                   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 50),
//                 Form(
//                   key: formKey,
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         controller: _emailcontroller,
//                         decoration: InputDecoration(
//                           floatingLabelAlignment: FloatingLabelAlignment.start,
//                           prefixIcon: Icon(Icons.lock_sharp),
//                           label: Text("Enter Email Address."),
//                           focusedBorder: OutlineInputBorder(),
//                         ),
//                         keyboardType: TextInputType.emailAddress,
//                       ),
//                       SizedBox(height: 30),
//                       SizedBox(
//                         width: 400,
//                         height: 50,
//                         child: MaterialButton(
//                           color: Colors.blueAccent,
//                           onPressed: () {},
//                           child: Text(
//                             'Resend OTP Code',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 15),
//                       SizedBox(
//                         width: 300,
//                         height: 50,
//                         child: MaterialButton(
//                           color: const Color.fromARGB(255, 100, 153, 245),
//                           onPressed: () {},
//                           child: Text(
//                             "Enter OTP Code",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
