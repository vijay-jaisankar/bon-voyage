import 'package:flutter/material.dart';
import 'widgets.dart';
import 'items_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SafeVoyage"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Browse local recommendations, travel like a local.",
                style: TextStyle(fontSize: 32),
              ),
            ),
            // Placeholder(),
            Image.asset("images/logo.png"),
            Center(
              child: RoundedButton(
                title: "Use Current Location",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ItemsList()));
                },
                colour: Colors.orange,
              ),
            ),
            Center(
              child: RoundedButton(
                title: "Select Location",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ItemsList()));
                },
                colour: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
