import 'dart:convert';

List<Carousel> carouselFromJson(String str) => List<Carousel>.from(json.decode(str).map((x) => Carousel.fromJson(x)));

String carouselToJson(List<Carousel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Carousel {
  Carousel({
    required this.id,
    required this.image,
  });

  final String id;
  final String image;

  factory Carousel.fromJson(Map<String, dynamic> json) => Carousel(
    id: json["_id"],
    image: json["image"]["url"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "image": image,
  };
}
