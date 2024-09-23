import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sampark/Config/Images.dart';
import 'package:sampark/Config/Strings.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomeFooterButton extends StatelessWidget {
  const WelcomeFooterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return      SlideAction(
       sliderButtonIconPadding: 13,
        text: WelcomePageString.slideToStart,
         textStyle: Theme.of(context).textTheme.labelLarge,
       
       height: 60,
        sliderButtonIcon: SvgPicture.asset(AssetsImage.plugSVG),
       onSubmit: () {
         Get.offAllNamed("/authPage");

         
       },
       sliderRotate: false,
       submittedIcon:SvgPicture.asset(AssetsImage.connnectSVG) ,
       innerColor: Theme.of(context).colorScheme.primary,
       outerColor: Theme.of(context).colorScheme.primaryContainer,
        
     );
  }
}