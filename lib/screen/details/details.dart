import 'package:flutter/material.dart';
import 'package:flutteralura/models/recipe.model.dart';

class Details extends StatelessWidget{
  final RecipeModel recipe;

  Details({Key key, @required this.recipe}) : super(key:key);
  
  @override
  Widget build(BuildContext context) {
    return constructDetails();
  }

  Widget constructDetails(){
    return Scaffold(
      appBar: constructAppBar("Detalhes"),
      body: ListView(
        children: <Widget>[
          constructDetailsImage(recipe.thumb),
          constructDetailsTitle(recipe.title),
          constructIconsDetailsRow('${recipe.portions} porções',recipe.prepareTime),
          constructDetailsSubtitle('Ingredientes'),
          constructDetailsDescription(recipe.ingredient),
          constructDetailsSubtitle('Modo de preparo'),
          constructDetailsDescription(recipe.prepareMode)
        ],
      )
    );
  }

  Widget constructIconsDetailsRow(portions, prepareTime){
    return Row(
      children: <Widget>[
        constructIconsDetailsColumn(Icons.restaurant, portions),
        constructIconsDetailsColumn(Icons.timer, prepareTime)
      ],
    );
  }

  Widget constructIconsDetailsColumn(icon, String text){
    return Expanded( //Utiliza todo espaço disponível na tela c/base qtd colunas
      child: Column(
        children: <Widget>[
          Icon(icon, color: Colors.deepOrange),
          Text(text, style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold))
        ]
      )
    );
  }

  Widget constructDetailsImage(String thumb){
    return Image.asset(thumb);
  }

  Widget constructDetailsTitle(String title){
    return Center(
      child: Text(title, style: TextStyle(
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
        fontSize: 20)
      )
    );
  }

  Widget constructDetailsSubtitle(String text){
    return Center(
      child: Text(text, style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20)
      )
    );
  }

  Widget constructDetailsDescription(String text){
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(text)
    );
  }

  Widget constructAppBar(String title){
    return AppBar(title:Text(title));
  }
}

