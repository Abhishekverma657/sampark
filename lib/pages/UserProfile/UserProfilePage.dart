import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sampark/Config/Images.dart';
import 'package:sampark/Controller/AuthController.dart';
import 'package:sampark/Controller/ProfileController.dart';
import 'package:sampark/pages/UserProfile/widgets/UserInfo.dart';

class UserProfilePage extends StatelessWidget {
  
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
     AuthController  authController = Get.put(AuthController());
     


    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(onPressed: (){
             Get.toNamed("updateProfile");

          }, icon: Icon(Icons.edit))
        ],
      ),
      body:  Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            LogInUserInfo(),
             Spacer(),
       ElevatedButton(onPressed: (){
         authController.logoutUser();
       }, child:Text("Logout"))
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
          ],
        ),
      ),
    );
  }
}
