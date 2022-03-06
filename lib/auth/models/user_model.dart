import 'dart:convert';

class UserModel {
  String? id;
  String? avatar;
  String? firstname;
  String? lastname;

  /// As its name is saying, this constructor makes class object from json string.
  UserModel.fromJson(String json) {
    Map<String, dynamic> data = jsonDecode(json);
    id = data['id'];
    avatar = data['avatar'];
    firstname = data['firstname'];
    lastname = data['lastname'];
  }

  /// As its name is saying, it converts user model to json string.
  String toJson() {

    Map<String, dynamic> data = {
      "id": id,
      "avatar": avatar,
      "firstname": firstname,
      "lastname": lastname
    };

    return jsonEncode(data);
  }

  /// Generates full name using firstname and lastname.
  String fullName() {
    return "$firstname $lastname";
  }
}