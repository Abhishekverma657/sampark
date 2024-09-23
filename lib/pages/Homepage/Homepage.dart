import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sampark/Config/Images.dart';
import 'package:sampark/Config/Strings.dart';
import 'package:sampark/Controller/ProfileController.dart';
import 'package:sampark/pages/Homepage/widgets/ChatList.dart';
import 'package:sampark/pages/Homepage/widgets/TabBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with TickerProviderStateMixin{
  ProfileControler  profileController = Get.put(ProfileControler());

  @override
  Widget build(BuildContext context) {
     TabController tabController=TabController(length: 3, vsync: this);
    return  Scaffold(
       appBar: AppBar(
        //  backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(AssetsImage.appiocnSVG),
          ),
         actions: [
           IconButton(onPressed: (){
 }, icon:  Icon(Icons.search)),
           IconButton(onPressed: (){

                       Get.toNamed("/profilePage");
           }, icon:  Icon(Icons.more_vert)),
           
         ],
        title:   Text(AppStrings.appName,style: Theme.of(context).textTheme.headlineSmall,),
         
         
         bottom:myTabBar( tabController,context),
         
         
         
         

       ),
       body:  Padding(
         padding: const EdgeInsets.all(10.0),
         child: TabBarView(
           controller: tabController,
          children: [
             InkWell(
               onTap: () {
                 Get.toNamed("chatPage");
               },
              child: ChatList()),
             ChatList(),
             ChatList()
           
           
          
          
          
           
           
           
           
         
         ]),
       ),
      
      
   

      
      
      
        floatingActionButton: FloatingActionButton(
           backgroundColor: Theme.of(context).colorScheme.primary,
          onPressed: (){

        },child: Icon(Icons.add,color: Theme.of(context).colorScheme.onBackground,),),
    );
  }
}