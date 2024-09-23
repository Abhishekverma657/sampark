import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sampark/Config/PagePath.dart';
import 'package:sampark/Config/Themes.dart';
import 'package:sampark/firebase_options.dart';
import 'package:sampark/pages/Auth/AuthPage.dart';
import 'package:sampark/pages/Homepage/Homepage.dart';
import 'package:sampark/pages/SplashScreen/SplashPage.dart';
import 'package:sampark/pages/Welcome/WelcomePage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sampark',
       theme: lightTheme,
       darkTheme: darkTheme,
        getPages: pagepath,
        themeMode: ThemeMode.dark,
         
      
      
      
      
      home:   SplashPage(),
    );
  }
}
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 