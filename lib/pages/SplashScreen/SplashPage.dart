import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampark/Config/Images.dart';
import 'package:sampark/Controller/SplashController.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
     SplashController splashController =SplashController();
     splashController.onInit();
    return  Scaffold(
       body:   Center(child: SvgPicture.asset(AssetsImage.appiocnSVG),)
        
    
    );
  }
}