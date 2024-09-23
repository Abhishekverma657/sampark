import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampark/Chat/ChatBubble.dart';
import 'package:sampark/Config/Images.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar:AppBar(
         leading: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Image.asset(AssetsImage.boyPic),
         ),
         title: Column(
           crossAxisAlignment:CrossAxisAlignment.start,
          children: [
           Text("Abhishek", style: Theme.of(context).textTheme.bodyLarge,),
           Text("Online", style: Theme.of(context).textTheme.labelSmall,)
         ],),
          actions: [
             IconButton(onPressed: (){

             }, icon: Icon(Icons.phone)),
              IconButton(onPressed: (){

              }, icon: Icon(Icons.video_call))
          ],
       ) ,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
           margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
           decoration: BoxDecoration( 
             borderRadius: BorderRadius.circular(100),
            color: Theme.of(context).colorScheme.primaryContainer,

           ),
           child: Row(children: [
            SvgPicture.asset(AssetsImage.chatMicSVG,width: 25,),
             SizedBox(width: 10,),
             Expanded(child: TextField(
              
               decoration: InputDecoration(filled: false,
               
               hintText: "Type message ..."),
             )),
               SvgPicture.asset(AssetsImage.chatGallerySVG,width: 25,),
               SizedBox(width: 10,),
                 SvgPicture.asset(AssetsImage.chatSendSVG,width: 25,),
                 SizedBox(width: 10,),

           ],),
        ),
       body:   Padding(
         padding:  EdgeInsets.all(10.0),
         child:  ListView( children: [
           ChatBubble(message: "How r u ", 
           isComing: true, 
           time: "13:92 PM", 
           status: "read", 
           imageUrl:  ""),
      ChatBubble(message: "How r u ", 
     isComing: false, 
     time: "13:92 PM", 
     status: "read", 
     imageUrl:  ""),
   ChatBubble(message: "How r u ", 
 isComing: false, 
 time: "13:92 PM", 
 status: "read", 
 imageUrl:  "https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png"),
   ChatBubble(message: "How r u ", 
isComing: true, 
time: "13:92 PM", 
status: "read", 
imageUrl:  "https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png"),
   
 
  
  
   

         
         
         
         
         
         
         
         
         
         
         
         
          
         ],),
       ),
    );
  }
}