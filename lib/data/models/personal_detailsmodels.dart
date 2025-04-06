class PersonalDetailsModel {
  final String fullName;
  final String phoneNumber;
  final String address;

  PersonalDetailsModel({
    required this.fullName,
    required this.phoneNumber,
    required this.address,
  });

  // تحويل البيانات إلى JSON لإرسالها إلى السيرفر
  Map<String, dynamic> toJson() {
    return {
      "full_name": fullName,
      "phone_number": phoneNumber,
      "address": address,
    };
  }

  // استرجاع البيانات من JSON
  factory PersonalDetailsModel.fromJson(Map<String, dynamic> json) {
    return PersonalDetailsModel(
      fullName: json["full_name"],
      phoneNumber: json["phone_number"],
      address: json["address"],
    );
  }
}
