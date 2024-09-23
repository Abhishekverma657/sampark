import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sampark/Controller/AuthController.dart';
import 'package:sampark/Widgets/PrimaryButton.dart';

class Loginform extends StatelessWidget {
  const Loginform({super.key});

  @override
  Widget build(BuildContext context) {
      TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
   AuthController authController = Get.put(AuthController());

    return   Column(
       children: [ 
         const  SizedBox(height: 30,),
        TextField(
          controller: email,
          decoration:  const InputDecoration( 
            hintText: "Email",
            prefixIcon: Icon(Icons.alternate_email_rounded)
          ),
         
        ),
         const  SizedBox(height: 30,),
           TextField(
             controller: password,
     decoration: const  InputDecoration( 
       hintText: "Password",
       prefixIcon: Icon(Icons.password_outlined)
     ),
    
   ),
   const  SizedBox(height: 60,),
    Obx(() =>  authController.isloading.value? CircularProgressIndicator(): Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
         PrimaryButton(
          ontap: () {
            // Get.offAllNamed("/homePage");
            authController.logIn(email.text, password.text);
            
          },
          btnName: "Login", icon:  Icons.lock_open_sharp),
       ],
     )
    )
    
    
    
    
    
    
    
    
    
    
    
    
    
    
       ],
    );
  }
}