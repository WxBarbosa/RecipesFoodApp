import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(title:Text('Cozinhando em casa')),
        body: SizedBox( 
          height: 300,
          child: Card(
            margin: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network('https://portal-amb-imgs.clubedaana.com.br/2016/11/bolo-de-cenoura-com-cobertura-de-chocolate-600x400.jpg', fit: BoxFit.fill,height: 268),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text('Bolo de Cenoura', style: TextStyle(fontSize: 20, color: Colors.white, backgroundColor: Colors.deepPurple),)
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
