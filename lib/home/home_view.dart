import 'package:flutter/material.dart';
import 'package:modulo_14_inherited_widget/home/drawer_view.dart';
    
class HomeView extends StatelessWidget {

  const HomeView({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      drawer: const DrawerView(),
      body: Container(),
    );
  }
}