import "package:hive/hive.dart";
part 'appuser.model.g.dart';

@HiveType(typeId: 0)
class AppUser extends HiveObject {
  @HiveField(0)
  final String? username;
  @HiveField(1)
  final String? email;

  AppUser({
    this.email,
    this.username,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
      };

  factory AppUser.fromJson(Map<String, dynamic> json) {
    AppUser user = AppUser(
      username: json["usrname"],
      email: json["email"],
    );
    return user;
  }

  @override
  String toString() => '{user:username:$username, email:$email}';
}
