class HospitalModel {

  String image;
  String name;

  HospitalModel ({ required this.image, required this.name});

  factory HospitalModel .fromJson(Map<String, dynamic> json) {
    return HospitalModel (

      image: json['image'] ?? "",
      name: json['name'] ?? "",
    );
  }
}