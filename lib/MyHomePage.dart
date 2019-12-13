import 'package:flutter/material.dart';
import 'package:flutter_experiment/MapSample.dart';
import 'package:flutter_experiment/MyWebView.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: MapSample(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "Madhusudhan Sahni",
                style:
                    new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              accountEmail: new Text(
                "8563831159",
                style:
                    new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title1",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.person_pin),
              title: Text('Item 2'),
              onTap: () {
                 Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title2",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Item 3'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title3",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.pause_circle_filled),
              title: Text('Item 4'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title4",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.satellite),
              title: Text('Item 5'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title5",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.drag_handle),
              title: Text('Item 6'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title6",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.query_builder),
              title: Text('Item 7'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title7",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.zoom_out),
              title: Text('Item 8'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title8",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            Divider(
              color: Colors.black38,
              height: 36,
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Item 9'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title9",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.phone_missed),
              title: Text('Item 10'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title10",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.phone_iphone),
              title: Text('Item 11'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyWebView(
                              title: "My Custom Title11",
                              selectedUrl: "http://webandroid.in/svg.php ",
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
