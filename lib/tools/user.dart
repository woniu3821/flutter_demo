import 'dart:convert';

class User {
  final String name;
  final String email;

  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'name': name, 'email': email};
}

String jsons = '{"name": "John Smith", "email": "john@example.com"}';

Map userMap = json.decode(jsons);

var user = new User.fromJson(userMap);
