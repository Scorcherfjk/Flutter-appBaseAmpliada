import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  final TextStyle style = TextStyle(fontSize: 30.0);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de Clicks",style: style),
            Text("0",style: style),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          
        },
      ),
    );
  
  }

}