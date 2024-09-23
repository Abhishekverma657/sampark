import 'package:flutter/material.dart';
import 'package:sampark/pages/Auth/widgets/AuthPageBody.dart';
import 'package:sampark/pages/Welcome/widgets/WelcomeHeading.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              WelcomeHeading(),
              SizedBox(
                height: 20,
              ),
               AuthPageBody()
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
            ],
          ),
        ),
      ),
    ));
  }
}
