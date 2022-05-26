import 'package:flutter/material.dart';
import 'package:jbs_ui/main2.dart';

class Visitorflow5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: ListSearch())));
  }
}

class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {
  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    "Apple",
    "Apricot",
    "Banana",
    "Blackberry",
    "Coconut",
    "Date",
    "Fig",
    "Gooseberry",
    "Grapes",
    "Lemon",
    "Litchi",
    "Mango",
    "Orange",
    "Papaya",
    "Peach",
    "Pineapple",
    "Pomegranate",
    "Starfruit"
  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Who you want to meet?',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                hintText: 'Name',
              ),
              onChanged: onItemChanged,
            ),
          ),
          Container(
            height: 300,
            child: ListView(
              padding: EdgeInsets.all(12.0),
              children: newDataList.map((data) {
                return ListTile(
                  title: Text(data),
                  onTap: () => print(data),
                );
              }).toList(),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Visitorflow6();
                }));
              },
              child: Text(
                'Next',
                style: TextStyle(color: Colors.orange.shade700),
              ))
        ],
      ),
    );
  }

  void searchlist() {
    ListView(
      padding: EdgeInsets.all(12.0),
      children: newDataList.map((data) {
        return ListTile(
          title: Text(data),
          onTap: () => print(data),
        );
      }).toList(),
    );
  }
}

// Search bar in app bar flutter
class SearchAppBar extends StatefulWidget {
  @override
  _SearchAppBarState createState() => new _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  Widget appBarTitle = new Text("AppBar Title");
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
          new AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
        new IconButton(
          icon: actionIcon,
          onPressed: () {
            setState(() {
              if (this.actionIcon.icon == Icons.search) {
                this.actionIcon = new Icon(Icons.close);
                this.appBarTitle = new TextField(
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                  decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search, color: Colors.white),
                      hintText: "Search...",
                      hintStyle: new TextStyle(color: Colors.white)),
                );
              } else {
                this.actionIcon = new Icon(Icons.search);
                this.appBarTitle = new Text("AppBar Title");
              }
            });
          },
        ),
      ]),
    );
  }
}
