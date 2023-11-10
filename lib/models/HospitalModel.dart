class HospitalModel {
  int id;
  String image;
  String name;
  String categoryName;

  HospitalModel ({required this.categoryName, required this.id,required this.image, required this.name});

  factory HospitalModel .fromJson(Map<String, dynamic> json) {
    return HospitalModel (
      id: json['id'] ?? "",
      image: json['image'] ?? "",
      name: json['name'] ?? "",
      categoryName: json['categoryName'] ?? "",
    );
  }
}