import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {

  final String name;
  final String imageAvatar;
  final String birthDate;

  UserModel({
    required this.name,
    required this.imageAvatar,
    required this.birthDate,
    required Widget child,
  }) : super(
    child: child,
  );

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
      imageAvatar != oldWidget.imageAvatar ||
      birthDate != oldWidget.birthDate;
  }

  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();

    assert(userModel != null, "UserModel not exists in BuildContext");

    return userModel!;
  }
}
