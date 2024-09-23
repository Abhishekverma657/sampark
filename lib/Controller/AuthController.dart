 
 
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sampark/Models/UserModel.dart';

class AuthController extends GetxController{
  final auth = FirebaseAuth.instance;
   final db=FirebaseFirestore.instance;
RxBool isloading=false.obs;




//for login
  Future<void>logIn(String email , String password)async{
     isloading.value=true;
     try{
       await  auth.signInWithEmailAndPassword(email: email, password: password);
       Get.offAllNamed('/homePage');
     } on FirebaseAuthException catch(e){
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
          }
   
   
                                                   

     } catch(e){
      print(e);
     }
 isloading.value=false;

  }

   Future<void>creatUser(String email, String password, String name )async{
     isloading.value=true;
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password, );
       await initUser(email, name);
       print("Account created");
           Get.offAllNamed('/homePage');
      } on FirebaseAuthException catch(e){
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
            }
       

    }catch(e){
      print(e);
    }
     isloading.value=false;

   }

    Future<void>logoutUser()async{
       await auth.signOut();
       Get.offAllNamed("/authPage");
    }
     Future<void>initUser(String email, String name )async{
       var newUser=UserModel(
         email: email,
          name: name,
           id: auth.currentUser!.uid

       );
       try{
      await db.collection("users").doc(auth.currentUser!.uid).set(newUser.toJson());
  } catch(e){
    print(e);
  }
     
     }
}