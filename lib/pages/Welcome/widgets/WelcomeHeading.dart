import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sampark/Config/Images.dart';
import 'package:sampark/Config/Strings.dart';

class WelcomeHeading extends StatelessWidget {
  const WelcomeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
       children: [
           Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       SvgPicture.asset(AssetsImage.appiocnSVG,color: Theme.of(context).colorScheme.onBackground,),
     ],
   ),
    SizedBox(height: 20,),
    Text(AppStrings.appName,style: Theme.of(context).textTheme.headlineLarge,)
  
       ],
    );
  }
}