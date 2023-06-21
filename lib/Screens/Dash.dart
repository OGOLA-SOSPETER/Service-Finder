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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Center(
                child: SizedBox(
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
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Top Rated",
          style: TextStyle(fontSize: 25),
        ),
        CardDisplay(),
        SizedBox(height: 5.0),
      ],
    );
  }
}
