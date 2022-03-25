import 'dart:convert';

class UserModel {
  String? id;
  String? avatar;
  String? firstname;
  String? lastname;
  String? email;
  String? phone;

  /// As its name is saying, this constructor makes class object from json string.
  UserModel.fromJson(String json) {
    Map<String, dynamic> data = jsonDecode(json);
    id = data['id'];
    avatar = data['avatar'];
    firstname = data['firstname'];
    lastname = data['lastname'];
    email = data['email'];
    phone = data['phone'];
  }

  /// As its name is saying, it converts user model to json string.
  String toJson() {

    Map<String, dynamic> data = {
      "id": id,
      "avatar": avatar,
      "firstname": firstname,
      "lastname": lastname,
      "email": email,
      "phone": phone
    };

    return jsonEncode(data);
  }

  /// Generates full name using firstname and lastname.
  String fullName() {
    return "$firstname $lastname";
  }
}