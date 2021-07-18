import 'package:flutter/material.dart';
import 'widgets.dart';

class AddItems extends StatefulWidget {
  const AddItems({Key? key}) : super(key: key);

  @override
  _AddItemsState createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  String name = "";

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
            InputField(),
            Divider(
              thickness: 2,
            ),
            Hint("Description"),
            InputField(),
            Divider(
              thickness: 2,
            ),
            Hint("Latitude"),
            InputField(),
            Divider(
              thickness: 2,
            ),
            Hint("Longitude"),
            InputField(),
            RoundedButton(
              title: "SUBMIT",
              onPressed: () {},
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
  const InputField({
    Key? key,
  }) : super(key: key);

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
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
