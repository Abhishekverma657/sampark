import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sampark/Models/UserModel.dart';

class ProfileControler extends GetxController{
  final auth =FirebaseAuth.instance;
  final db=FirebaseFirestore.instance;


   Rx<UserModel> currentUser=UserModel().obs;

     void onInit()async{
      super.onInit();
      await getUserDetails();
     }

    Future<void>getUserDetails()async{
      await db.collection("users").doc(auth.currentUser!.uid).get().then((value) {
        currentUser.value=UserModel.fromJson(value.data()!);
      });
    }
}