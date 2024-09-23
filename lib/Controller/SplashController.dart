import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashController extends GetxController{
  final auth= FirebaseAuth.instance;
  void onInit()async{
    super.onInit();
     splashHandle();
  }




  Future<void>splashHandle()async{
    await Future.delayed(Duration(seconds: 1),);
      //  Get.offAllNamed("/homePage");
      if(auth.currentUser==null){
        Get.offAllNamed("/authPage");
        }
        else{
          Get.offAllNamed("/homePage");
           print(auth.currentUser!.email);
          }

        
  }

}