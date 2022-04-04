import 'package:flutter/material.dart';
import 'package:modulo_14_inherited_widget/home/home_view.dart';
import 'package:modulo_14_inherited_widget/model/user_model.dart';
import 'package:modulo_14_inherited_widget/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: "Bruno Noveli",
      imageAvatar: "https://sm.ign.com/ign_br/screenshot/default/naruto-shippuden_zy11.jpg",
      birthDate: "19/09/2009",
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          "/" : (_) => const SplashView(),
          "/home" : (_) => const HomeView(),
        },
      ),
    );
  }
}