import 'package:flutter/material.dart';
import 'widgets.dart';
import 'items_screen.dart';

class AddItems extends StatefulWidget {
  const AddItems({Key? key}) : super(key: key);

  @override
  _AddItemsState createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  String name = "";
  String lat = "";
  String long = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Name"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hint("Name"),
            InputField(
              onchange: (input) {
                setState(() {
                  name = input;
                });
                print(name);
              },
            ),
            Divider(
              thickness: 2,
            ),
            Hint("Description"),
            InputField(
              onchange: (input) {
                setState(() {
                  description = input;
                });
              },
            ),
            Divider(
              thickness: 2,
            ),
            Hint("Latitude"),
            InputField(
              onchange: (input) {
                setState(() {
                  lat = input;
                });
              },
            ),
            Divider(
              thickness: 2,
            ),
            Hint("Longitude"),
            InputField(
              onchange: (input) {
                setState(() {
                  long = input;
                });
              },
            ),
            RoundedButton(
              title: "SUBMIT",
              onPressed: () {
                Navigator.pop(
                  context,
                  {
                    "latitude": lat,
                    "longitude": long,
                    "name": name,
                    "description": description
                  },
                );
              },
              colour: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  Text Hint(String name) {
    return Text(
      name,
      style: TextStyle(fontSize: 22),
    );
  }
}

class InputField extends StatelessWidget {
  InputField({required this.onchange});
  Function onchange;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          onChanged: (input) {
            onchange(input);
          },
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
