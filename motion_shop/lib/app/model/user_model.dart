import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  String username;

  @HiveField(1)
  bool isLoggedin;

  User({required this.username, required this.isLoggedin});
}
