import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sampark/Controller/AuthController.dart';
import 'package:sampark/Controller/ImagePicker.dart';
import 'package:sampark/Controller/ProfileController.dart';
import 'package:sampark/Widgets/PrimaryButton.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isEdit = false.obs;
    ImagePickerController imagePickerController =
        Get.put(ImagePickerController());

    ProfileControler profileControler = Get.put(ProfileControler());
    TextEditingController name =
        TextEditingController(text: profileControler.currentUser.value.name??"");
    TextEditingController email =
        TextEditingController(text: profileControler.currentUser.value.email);
    TextEditingController phone = TextEditingController(
        text: profileControler.currentUser.value.phoneNumber??" ");
    TextEditingController about =
        TextEditingController(text: profileControler.currentUser.value.about??"");
    RxString imagePath = ''.obs;
     AuthController authController=Get.put(AuthController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
         actions: [
          IconButton(onPressed: (){
             authController.logoutUser();

          }, icon:  Icon(Icons.logout))
         ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              //  height: 300,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() => isEdit.value
                                ? InkWell(
                                    onTap: () async {
                                      imagePath.value =
                                          await imagePickerController
                                              .PickImage();

                                      print("Image Path" + imagePath.value);
                                    },
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: profileControler.currentUser.value.profileImage == ""||profileControler.currentUser.value.profileImage==null
                                          ? Icon(Icons.add)
                                          : ClipOval(
                                             child: Image.network(profileControler.currentUser.value.profileImage!, fit: BoxFit.cover,),
                                              
                                              
                                              
                                            
                                            ),
                                    ),
                                  )
                                : Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                   child: profileControler.currentUser.value.profileImage == ""||profileControler.currentUser.value.profileImage==null?Icon(Icons.image):
                                   ClipOval(child: Image.network(profileControler.currentUser.value.profileImage!,fit: BoxFit.cover,)),
                                   
                                   
                                 )
                                
                                )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Obx(
                          () => TextField(
                            enabled: isEdit.value,
                            controller: name,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              prefixIcon: Icon(Icons.person),
                              labelText: "Name",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Obx(
                          () => TextField(
                            enabled: isEdit.value,
                            controller: about,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              prefixIcon: Icon(Icons.info),
                              labelText: "About",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          enabled: false,
                          controller: email,
                          decoration: InputDecoration(
                            filled: isEdit.value,
                            prefixIcon: Icon(Icons.alternate_email_outlined),
                            labelText: "Email",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Obx(
                          () => TextField(
                            enabled: isEdit.value,
                            controller: phone,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              prefixIcon: Icon(Icons.phone),
                              labelText: "Number",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                              () => isEdit.value
                                  ? PrimaryButton(
                                      btnName: "Save",
                                      icon: Icons.save,
                                      ontap: () async {
                                        await profileControler.updateProfile(
                                            imagePath.value,
                                            name.text,
                                            about.text,
                                            phone.text);
                                        isEdit.value = false;
                                      })
                                  : PrimaryButton(
                                      btnName: "Edit",
                                      icon: Icons.edit,
                                      ontap: () {
                                        isEdit.value = true;
                                      }),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
