import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampark/Config/Images.dart';
import 'package:sampark/Config/Strings.dart';
import 'package:sampark/pages/Welcome/widgets/WelcomeBody.dart';
import 'package:sampark/pages/Welcome/widgets/WelcomeFooterbutton.dart';
import 'package:sampark/pages/Welcome/widgets/WelcomeHeading.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Scaffold(
       body: SafeArea(
         child: Padding(
           padding:  EdgeInsets.all(15.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             
             children: [
          
                WelcomeHeading(),
               
                  WelcomeBody(),
             
                    WelcomeFooterButton()
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
              
              
              
              
              
              

              
              
              
              
              
              
              
              
              

              
              
              
             
             
             
             
             
             
             ],
           ),
         ),
       ),
    );
  }
}