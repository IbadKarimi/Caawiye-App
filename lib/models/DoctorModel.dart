class DoctorModel {


  String imageName;
  String fullName;
  String experience;
  String specialization;
  String fee;
  String hospitalName;




  DoctorModel ({required this.fee,required this.experience, required this.fullName,required this.specialization,
    required this.imageName,required this.hospitalName
  });

  factory DoctorModel .fromJson(Map<String, dynamic> json) {
    return DoctorModel (
      fullName: json['fullName'] ?? "",
      imageName: json['imageName'] ?? "",
      hospitalName: json['hospitalName'] ?? "",
      specialization: json['specialization'] ?? "",
      experience: json['experience'] ?? "",
      fee: json['fee'] ?? "",
    );
  }
}