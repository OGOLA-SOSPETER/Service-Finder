import 'package:flutter/material.dart';
import 'package:servicefinder/displays/maincard.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  TextEditingController _searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              SizedBox(
                width: 300,
                height: 35,
                child: TextFormField(
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Search for a Service Provider',
                    hintStyle: TextStyle(fontStyle: FontStyle.normal),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          size: 30,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  autofocus: false,
                  controller: _searchcontroller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.search,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: true,
                  enabled: true,
                  enableInteractiveSelection: true,
                ),
              )
            ],
          ),
        ),
        Text(
          "Weekly Ratings",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          textAlign: TextAlign.start,
        ),
        CardDisplay(),
        SizedBox(height: 5.0),
      ],
    );
  }
}
