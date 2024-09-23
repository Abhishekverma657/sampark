import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

myTabBar( TabController tabController, BuildContext context){
   return    PreferredSize(
    preferredSize: Size.fromHeight(60),
   child: TabBar(
      controller: tabController,
      labelStyle:Theme.of(context).textTheme.bodyLarge ,
       unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
      
     tabs: [
     Text("Chats"),
      Text("Groups"),
   Text("Calls"),
    ],),
 );
}

























