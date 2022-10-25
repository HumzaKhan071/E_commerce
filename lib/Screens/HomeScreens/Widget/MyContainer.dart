import 'package:flutter/material.dart';
import 'MyAddContainer.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              MyAddContainer(),
              SizedBox(
                height: 10,
              ),
              MyAddContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
