class UsersModel {
  int id;
  String name;

  UsersModel({
    required this.id,
    required this.name,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
    id: json["id"],
    name: json["name"],
  );

}

