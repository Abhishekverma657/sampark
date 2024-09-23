import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sampark/Models/UserModel.dart';

class ProfileControler extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final store = FirebaseStorage.instance;
  RxBool isloding = false.obs;

  Rx<UserModel> currentUser = UserModel().obs;

  void onInit() async {
    super.onInit();
    await getUserDetails();
  }

  Future<void> getUserDetails() async {
    await db.collection("users").doc(auth.currentUser!.uid).get().then((value) {
      currentUser.value = UserModel.fromJson(value.data()!);
    });
  }

  Future<void> updateProfile(
      String imageUrl, String name, String about, String number) async {
    isloding.value = true;
    try{
       final imageLink = await uploadfileToFirebase(imageUrl);
 
 final upatedUser = UserModel(
     name: name, about: about, phoneNumber: number, profileImage: imageLink);
 await db.collection("users").doc(auth.currentUser!.uid).set(upatedUser.toJson());

    }catch(e){
      print(e);
    }
    
    
    
    
    
    isloding.value = false;
  }

  Future<String> uploadfileToFirebase(String imagePath) async {
    final path = "files/${imagePath}";
    final file = File(imagePath);
    if (imagePath != "") {
      try {
        final ref = store.ref().child(path).putFile(file);
        final UploadTask = await ref.whenComplete(() {});
        final downloadImageUrl = await UploadTask.ref.getDownloadURL();
        print(downloadImageUrl);
        return downloadImageUrl;
      } catch (e) {
        print(e);
        return " ";
      }
    }
    return "";
  }
}
