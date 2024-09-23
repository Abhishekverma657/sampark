// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:sampark/Config/Images.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastChat;
  final String lastTime;
  const ChatTile( {
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.lastChat,
    required this.lastTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
       margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration( 
     color:Theme.of(context).colorScheme.primaryContainer,
      borderRadius: BorderRadius.circular(20)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
     
     Row(children: [
        Image.asset(imageUrl, width: 70),
SizedBox(width: 15,),
 Column(
   crossAxisAlignment: CrossAxisAlignment.start ,
   children: [
     Text(name,style: Theme.of(context).textTheme.bodyLarge),
      SizedBox(height: 7,),
     Text(lastChat, style: Theme.of(context).textTheme.labelMedium,),
   ],
 ),
  
     ],),
     Text(lastTime, style: Theme.of(context).textTheme.labelMedium,),
     
     
     
     
     
     
     
     
     
    ],),
 );
  }
}
