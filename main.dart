import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(29, 75, 90, 50),
      appBar: AppBar(
        title: Text(
            "fooDIE",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(233, 242, 239, 50), // bgcolor of logo
            )
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(19, 65, 80, 50),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          SizedBox(height: 10.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 8, color: Color.fromRGBO(29, 75, 90, 50),),
                borderRadius: const BorderRadius.all(const Radius.circular(6)),
              ),
              margin: const EdgeInsets.all(2),
              child: FittedBox(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: (){
                    debugPrint('Expiry Tracker has been clicked!');
                  },
                  child: Image.asset('images/etname.jpg'),
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          SizedBox(height: 10.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 8, color: Color.fromRGBO(29, 75, 90, 50),),
                borderRadius: const BorderRadius.all(const Radius.circular(6)),
              ),
              margin: const EdgeInsets.all(2),
              child: FittedBox(
                child: FlatButton(
                  onPressed: (){
                    debugPrint('Weekly Planner has been clicked!');
                  },
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset('images/wp.jpeg'),
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          SizedBox(height: 10.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 8, color: Color.fromRGBO(29, 75, 90, 50),),
                borderRadius: const BorderRadius.all(const Radius.circular(6)),
              ),
              margin: const EdgeInsets.all(2),
              child: FittedBox(
                child: FlatButton(
                  onPressed: (){
                    debugPrint('Recipie Suggestions has been clicked!');
                  },
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset('images/rs.jpg'),
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(height: 10.0),

        ],
      ),
    );
  }
}

