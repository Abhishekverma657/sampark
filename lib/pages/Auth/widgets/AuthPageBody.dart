import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sampark/pages/Auth/widgets/LogInForm.dart';
import 'package:sampark/pages/Auth/widgets/SignupForm.dart';

class AuthPageBody extends StatelessWidget {
  const AuthPageBody({super.key});

  @override
  Widget build(BuildContext context) {
   
   
     RxBool isLogin=true.obs;
    return  Container(
   padding: EdgeInsets.all(20),
  //  height: 400,
   decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
       color: Theme.of(context).colorScheme.primaryContainer),
   child: Obx(
     ()=> Row(
       children: [
         Expanded(
             child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 InkWell(
                   onTap: () {
                     isLogin.value = true;
                   },
                   child: Container(
                    width: MediaQuery.of(context).size.width/2.5,
                     child: Column(
                       children: [
                         Text(
                           "Login",
                           style: isLogin.value? Theme.of(context).textTheme.bodyLarge:Theme.of(context).textTheme.labelLarge,
                         ),
                        const   SizedBox(
                           height: 5,
                         ),
                         AnimatedContainer(
                           duration: Duration(milliseconds: 200),
                           width: isLogin.value?100:0,
                           height: 3,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               color:
                                   Theme.of(context).colorScheme.primary),
                         ),
                       ],
                     ),
                   ),
                 ),
                 InkWell(
                   onTap: () {
                     isLogin.value = false;
                   },
                   child: Container(
                     width: MediaQuery.of(context).size.width/2.5,
                     child: Column(
                       children: [
                         Text(
                           "Signup",
                           style: isLogin.value? Theme.of(context).textTheme.labelLarge:Theme.of(context).textTheme.bodyLarge,
                         ),
                       const    SizedBox(
                           height: 5,
                         ),
                         AnimatedContainer(
                           duration: Duration(microseconds: 200),
                           width: isLogin.value?0:100,
                           height: 3,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               color:
                                   Theme.of(context).colorScheme.primary),
                         ),
                       ],
                     ),
                   ),
                 )
               ],
             ),
            Obx(() => isLogin.value?Loginform():SignupForm())
           ],
         ))
       ],
     ),
   ),
   
 ) ;
  }
}