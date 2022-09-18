class UserModel {
  late  int id;
  late String name;
  late String message;

  UserModel({
    required this.id,
    required this.name,
    required this.message,
  });
  //api
  UserModel.FromJson(Map<String,dynamic> json){
    id = json["id"];
    name = json["name"];
    message = json["message"];
  }
}