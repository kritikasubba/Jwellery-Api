

class Details {
  int?  id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;
  Details({
    this.category,
    this.description,
    this.id,
    this.image,
    this.price,
    this.rating,
    this.title
  });

   Details.fromJson(Map<String , dynamic> json) {
    id = json['id'];
    category = json['category'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;

   }

   Map<String , dynamic> toJson() {
    final Map<String, dynamic> data =  new Map<String , dynamic>();
data['id'] =  id;
data['category'] = category;
data['title'] = title;
data['price'] = price;
data['description'] = description;
data['image'] = image;
if(rating != null) {
  data['rating'] = rating!.toJson();
}

return data;
    
   }
   

}

class Rating {
  num? rate;
  int? count;

  Rating({
    this.count,
    this.rate,
  });
Rating.fromJson(Map<String, dynamic> json) {
  rate = json['rate'];
  count = json['count'];
}

Map<String , dynamic> toJson() {
  final Map<String , dynamic> data =  new Map<String, dynamic> (); 

  data['rate'] = rate;
  data['count'] = count;
  return data;
}
  
}