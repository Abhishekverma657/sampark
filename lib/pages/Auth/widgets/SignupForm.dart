import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sampark/Controller/AuthController.dart';
import 'package:sampark/Widgets/PrimaryButton.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
     AuthController  authController = Get.put(AuthController());
     TextEditingController name=TextEditingController();
     TextEditingController email=TextEditingController();
     TextEditingController password=TextEditingController();


    return   Column(
       children: [ 
         SizedBox(height: 30,),
           TextField(
             controller: name,
    decoration: InputDecoration( 
      hintText: "Full Name",
      prefixIcon: Icon(Icons.person)
    ),
   
  ),
   SizedBox(height: 30,),
        TextField(
           controller: email,
          decoration: InputDecoration( 
            hintText: "Email",
            prefixIcon: Icon(Icons.alternate_email_rounded)
          ),
         
        ),
         SizedBox(height: 30,),
           TextField(
             controller: password,
     decoration: InputDecoration( 
       hintText: "Password",
       prefixIcon: Icon(Icons.password_outlined)
     ),
    
   ),
   SizedBox(height: 60,),
   Obx(() =>   authController.isloading.value? CircularProgressIndicator(): Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
         PrimaryButton(
           ontap: (){
            // Get.offAllNamed("/homePage");
            authController.creatUser( email.text, password.text, name.text);
            

           },
          btnName: "Signup", icon:  Icons.lock_open_sharp),
       ],
     )
   )
    
    
    
    
    
    
    
    
    
    
    
    
    
    
       ],
    );
  }
}