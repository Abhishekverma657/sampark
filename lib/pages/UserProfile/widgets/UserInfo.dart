import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sampark/Config/Images.dart';
import 'package:sampark/Controller/ProfileController.dart';

class LogInUserInfo extends StatelessWidget {
  const LogInUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
      ProfileControler  profileController = Get.put(ProfileControler());
    return     Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primaryContainer),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset(AssetsImage.boyPic)],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Obx(() =>    Text(
                        profileController.currentUser.value.name.toString()??"User",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                  )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() =>  Text(
                      profileController.currentUser.value.email.toString(),
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.local_phone_outlined,
                              color: Color(0xff039C00),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Call",
                              style: TextStyle(color: Color(0xff039C00)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Color(0xffFF9900),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Video",
                              style: TextStyle(color: Color(0xffFF9900)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AssetsImage.appiocnSVG,
                              width: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Chat",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primary),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}