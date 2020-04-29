import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: flare(),
));


class flare extends StatefulWidget{
  @override
  _flareState createState() =>_flareState() ;

 }




class  _flareState  extends  State<flare>{
  String  anime ="idle";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
        padding: EdgeInsets.all(32.0),
        child:Column(

            children:<Widget>[
             Expanded(
                child:FlareActor(
            "assets/Teddy.flr",
                  alignment:Alignment.center,
                  fit:BoxFit.contain,
                  animation: anime,
          ),
        ),
        Row(
          children:<Widget>[
            FlatButton(
              child:Text('Happy'),
              onPressed: (){
                setState(() {
                  anime= "success";

                });
              },

            ),
            FlatButton(
              child: Text('sad'),
              onPressed:(){
    setState((){
    anime="fail";
    });
    },
    )
    ],
    )],)));}}
