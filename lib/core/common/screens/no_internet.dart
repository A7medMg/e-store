import 'package:flutter/material.dart';

class NoInternetConaction extends StatelessWidget {
  const NoInternetConaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/core/no_network.jpg'),
            fit: BoxFit.fill,
          ),  
        ),
      ),
    );
  }
}