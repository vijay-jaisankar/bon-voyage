import 'package:flutter/material.dart';
import 'add_items.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("App Name"),
        ),
        body: ListView.builder(
          itemCount: itemsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          "Name : " + itemsList[index]["name"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Latitude : " + itemsList[index]["latitude"],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Longitude : " + itemsList[index]["longitude"],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Text(
                        "Description : " + itemsList[index]["description"],
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            dynamic newItem = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddItems()),
            );

            setState(() {
              itemsList.add(newItem);
            });
          },
          label: Text("Add Items"),
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}

List itemsList = [
  {
    "id": 8,
    "latitude": "12.97°N",
    "longitude": " 79.59°E",
    "name": "Apartment",
    "description": "hot spot"
  },
  {
    "id": 9,
    "latitude": "12.971°N",
    "longitude": "78.59°E",
    "name": "Waterfall",
    "description": "closed due to covid"
  }
];
