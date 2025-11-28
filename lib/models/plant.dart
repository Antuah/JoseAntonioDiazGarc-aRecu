class Plant {
  final String id;
  final String name;
  final String scientificName;
  final String description;
  final String imageUrl;
  final String careInstructions;

  Plant({
    required this.id,
    required this.name,
    required this.scientificName,
    required this.description,
    required this.imageUrl,
    required this.careInstructions,
  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      id: json['id'] as String,
      name: json['name'] as String,
      scientificName: json['scientificName'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      careInstructions: json['careInstructions'] as String,
    );
  }
}
