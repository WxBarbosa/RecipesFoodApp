class RecipeModel {
  String title;
  String thumb;
  String portions;
  String prepareTime;
  String ingredient;
  String prepareMode;

  RecipeModel(
      {this.title,
      this.thumb,
      this.portions,
      this.prepareTime,
      this.ingredient,
      this.prepareMode});

  RecipeModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    thumb = json['thumb'];
    portions = json['portions'];
    prepareTime = json['prepareTime'];
    ingredient = json['ingredient'];
    prepareMode = json['prepareMode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['thumb'] = this.thumb;
    data['portions'] = this.portions;
    data['prepareTime'] = this.prepareTime;
    data['ingredient'] = this.ingredient;
    data['prepareMode'] = this.prepareMode;
    return data;
  }
}