import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          // ignore: avoid_unnecessary_containers
          body: Container(
        child:const Text("Cart")
      ),
    );
  }
}