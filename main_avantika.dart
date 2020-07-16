import 'package:flutter/material.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Categories',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Categories'),
          backgroundColor: Colors.cyan[300],
        ),
        body: SnackBarPage(),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 90,
                child: DrawerHeader(
                  child: Text('FooDIE'),
                  decoration: BoxDecoration(
                    color: Colors.cyan[300],
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                },
              ),
              ListTile(
                title: Text('Category'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Calender'),
                onTap: (){

                },
              ),
              ListTile(
                title: Text('Recipes'),
                onTap: (){

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.green[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.restaurant),
              FlatButton(
                color: Colors.green[100],
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Fruits and Vegetables'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text('     Fruits\n      and\nVegetables'),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.local_drink),
              FlatButton(
                color: Colors.grey[300],
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Dairy'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text('Dairy'),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.yellow[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.shopping_basket),
              FlatButton(
                color: Colors.yellow[100],
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Pulses'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text('Pulses'),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.red[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.whatshot),
              FlatButton(
                color: Colors.red[100],
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Spices'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text('Spices'),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.deepPurple[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.local_bar),
              FlatButton(
                color: Colors.deepPurple[100],
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Juices and Drinks'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text('Juices\n   and\nDrinks'),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.lime[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.check_box_outline_blank),
              FlatButton(
                color: Colors.lime[200],
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Packaged Food'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text('Packaged\n    Food'),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.blue[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.ac_unit),
              FlatButton(
                color: Colors.blue[100],
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Frozen Food'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text('Frozen\n Food'),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.orange[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.room_service),
              FlatButton(
                color: Colors.orange[100],
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Poultry'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Text('Poultry'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
