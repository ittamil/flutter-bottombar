import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          // ignore: avoid_unnecessary_containers
          body: Container(
        child:const Text("Home")
      ),
    );
  }
}