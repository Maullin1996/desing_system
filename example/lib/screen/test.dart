import 'package:desing_system/design_system.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/action.png')
              )
          ),
          child: Text('hi'),
        )
      ),
    );
  }
}