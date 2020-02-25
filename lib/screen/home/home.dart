import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutteralura/screen/details/details.dart';
import '../../models/recipe.model.dart';

class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }

}

class HomeState extends State<Home>{
  
  @override
  Widget build(BuildContext context){
    //return constructHome();
    return constructHome();
  }

  Widget constructHome(){
    return Scaffold(
      appBar: constructAppBar('Cozinhando em casa'),
      body: constructCardList()
    );
  }

  Widget constructCardList(){
    return FutureBuilder(
      future: DefaultAssetBundle
          .of(context)
          .loadString('assets/receitas.json'),
      builder: (context, snapshot) {
        List<dynamic> recipes = json.decode(snapshot.data.toString());

        return ListView.builder(
          itemBuilder: (BuildContext context, int index){
            RecipeModel recipe = RecipeModel.fromJson(recipes[index]);
            return constructCard(recipe);
          },
          itemCount: recipes == null ? 0 : recipes.length,
        );
      }
    );
  }

  Widget constructAppBar(String title){
    return AppBar(title:Text(title));
  }

  Widget constructCard(recipe){
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => Details(recipe: recipe)
        ));
      },
      child: SizedBox( 
          height: 300,
          child:Card(
            margin: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    constructCardImage(recipe.thumb),
                    constructCardGradient(),
                    constructCardText(recipe.title)
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }

  Widget constructCardGradient(){
    return Container(
      height: 268,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.deepOrange.withOpacity(0.7)
          ],
        )
      )
    );
  }

  Widget constructCardImage(String thumb){
    return Image.asset(thumb, fit: BoxFit.fill,height: 268);
  }

  Widget constructCardText(String title){
    return Positioned(
              bottom: 10,
              left: 10,
              child: Text(title, style: TextStyle(
                fontSize: 20, 
                color: Colors.white),
              )
            );
  }
}