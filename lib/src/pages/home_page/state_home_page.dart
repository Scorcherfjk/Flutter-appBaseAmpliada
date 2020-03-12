import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
  
}

class _HomePageState extends State<HomePage>{

  final TextStyle _style = TextStyle(fontSize: 30.0);

  int _contador = 0;

  void _agregar() {
    setState(() => _contador++ );
  }

  void _remover() {
    setState(() => _contador-- );
  }

  void _reiniciar() {
    setState(() => _contador = 0 );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFul"),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de Taps",style: _style),
            Text("$_contador",style: _style),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _crearBotones()
    );
  
  }

  
  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reiniciar,
        ),
        Spacer(),
        //Expanded(child:SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _remover,
        ),
        SizedBox(width: 10.0,),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
      ],
    );

  }

}


