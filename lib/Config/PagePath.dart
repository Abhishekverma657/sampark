import 'package:get/get.dart';
import 'package:sampark/Chat/ChatPage.dart';
import 'package:sampark/pages/Auth/AuthPage.dart';
import 'package:sampark/pages/Homepage/Homepage.dart';
import 'package:sampark/pages/UserProfile/UserProfilePage.dart';
import 'package:sampark/pages/UserProfile/UpdateProfile.dart';

var pagepath=[
  GetPage(name: "/authPage",
   page: ()=>AuthPage(),
    transition: Transition.rightToLeft
   ),
    GetPage(name: "/homePage",
  page: ()=>HomePage(),
   transition: Transition.rightToLeft
  ),
   GetPage(name: "/chatPage",
 page: ()=> ChatPage(),
  transition: Transition.rightToLeft
 ),
    GetPage(name: "/profilePage",
 page: ()=> UserProfilePage(),
  transition: Transition.rightToLeft
 ),
    GetPage(name: "/updateProfile",
page: ()=>  UserUpdateProfile(),
 transition: Transition.rightToLeft
)


];