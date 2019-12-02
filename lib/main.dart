import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(

      home:MyApp()

    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Icon(Icons.supervised_user_circle),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: new Container(

        padding: EdgeInsets.all(30),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Login", style:TextStyle(fontSize: 30, color:Colors.green)),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                  children: <Widget>[
                    new Icon(Icons.phone),
                    Expanded(child: new TextField(decoration: new InputDecoration(hintText: "Phone Number..."),),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                  children: <Widget>[
                    new Icon(Icons.verified_user),
                    Expanded(child: new TextField(obscureText:true, decoration: new InputDecoration(hintText: "OTP..."),),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new RaisedButton(
                  onPressed: (){},
                  child: new Text("Sign In", style: TextStyle(fontSize: 15, color: Colors.white),),
                  color: Colors.green,
                ),
              ),
            ],

          ),
        ),
      ),
      
    );
  }
}
