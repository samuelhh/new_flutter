// import 'dart:js';

import 'package:flutter/material.dart';
import './LaunchUrl.dart';
import './ListViewWidget.dart';
import './LogoApp.dart';
import './StaticCard.dart';
import './ContainerWidget.dart';
import './CustomScrollViewWidget.dart';
import './GridViewWidget.dart';
import './ImageWidget.dart';
import './TextWidget.dart';
import './DefaultApp.dart';
import './FlutterSwiper.dart';
import './PhotoApp.dart';
import './PhotoHero.dart';

class MoreWidget extends StatefulWidget {
  @override
  _MoreWidgetState createState() => _MoreWidgetState();
}

class _MoreWidgetState extends State<MoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Flutter'),
      ),
      body: Container(
        child: MyListView(),
      ),
    );
  }
}

//MyListView
class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: ListTile.divideTiles(context: context, tiles: [
      ListTile(
        title: Text("Default"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => DefaultApp())),
      ),
      ListTile(
        title: Text("FlutterSwiper"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => FlutterSwiper())),
      ),
      ListTile(
        title: Text("CustomScrollView"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => new CustomScrollViewWidget()));
        },
      ),
      ListTile(
        title: Text("Text"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => new TextWidget()));
        },
      ),
      ListTile(
        title: Text("Container"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => new ContainerWidget())),
      ),
      ListTile(
        title: Text("Image"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => new ImageWidget()));
        },
      ),
      ListTile(
        title: Text("GridView"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => new GridViewWidget())),
      ),
      ListTile(
        title: Text("StaticCard"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => StaticCard())),
      ),
      ListTile(
        title: Text("ListView"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ListViewWidget())),
      ),
      ListTile(
        title: Text("launchUrl"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LaunchUrl())),
      ),
      ListTile(
        title: Text("photoApp"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => PhotoApp())),
      ),
      ListTile(
        title: Text("logoApp"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LogoApp())),
      ),
      ListTile(
        title: Text("photoHero"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PhotoHero()),
        ),
      ),
    ]).toList());
  }
}
