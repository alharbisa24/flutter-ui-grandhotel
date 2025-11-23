class Property {
  final String id;
  final String title;
  final String description;
  final double price;
  final String location;
  final int beds;
  final int bathrooms;
  final String image; 
  final String rating;

  Property({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.location,
    required this.beds,
    required this.bathrooms,
    required this.image,
    this.rating = '4.5',
  });


  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      location: json['location'] as String,
      beds: json['beds'] as int,
      bathrooms: json['bathrooms'] as int,
      image: json['image'] as String,
      rating: json['rating'] as String? ?? '4.5',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'location': location,
      'beds': beds,
      'bathrooms': bathrooms,
      'image': image,
      'rating': rating,
    };
  }
}