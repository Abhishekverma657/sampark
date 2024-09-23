import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sampark/Config/Images.dart';
import 'package:sampark/pages/Homepage/widgets/ChatTile.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(children: [
      ChatTile( imageUrl:  AssetsImage.girlPic, name: "Rupa", lastChat:  "Where aare u", lastTime: "09:03 PM"),
          ChatTile( imageUrl:  AssetsImage.girlPic, name: "Rupa", lastChat:  "Where aare u", lastTime: "09:03 PM"),
              ChatTile( imageUrl:  AssetsImage.girlPic, name: "Rupa", lastChat:  "Where aare u", lastTime: "09:03 PM")
       
       
       
       
       
      
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


  
  
 ],);
  }
}