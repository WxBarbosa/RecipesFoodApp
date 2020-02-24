import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return constructHome();
  }

  Widget constructHome(){
    return Scaffold(
      appBar: constructAppBar('Cozinhando em casa'),
      body: SizedBox( 
          height: 300,
          child: constructCard()
      )
    );
  }

  Widget constructAppBar(String title){
    return AppBar(title:Text(title));
  }

  Widget constructCard(){
    return Card(
            margin: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    constructCardImage('https://portal-amb-imgs.clubedaana.com.br/2016/11/bolo-de-cenoura-com-cobertura-de-chocolate-600x400.jpg'),
                    constructCardText('Bolo de Cenoura')
                  ],
                ),
              ],
            ),
          );
  }

  Widget constructCardImage(String url){
    return Image.network(url, fit: BoxFit.fill,height: 268);
  }

  Widget constructCardText(String title){
    return Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white, backgroundColor: Colors.deepPurple),)
                    );
  }
}