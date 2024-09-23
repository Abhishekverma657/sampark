import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampark/Config/Images.dart';

class ChatBubble extends StatelessWidget {
   final String  message;
    final bool isComing;
    final String time;
    final String status;
    final String imageUrl;
  const ChatBubble({super.key, required this.message, required this.isComing, required this.time, required this.status, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
         crossAxisAlignment: isComing?CrossAxisAlignment.start:CrossAxisAlignment.end,
        children: [
          Container(
          padding: EdgeInsets.all(10),
           constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width/1.3),
           decoration: BoxDecoration(
            
             borderRadius:  isComing? const  BorderRadius.only(topLeft: Radius.circular(10),
  topRight: Radius.circular(10),
  bottomLeft: Radius.circular(0),
  bottomRight: Radius.circular(10)):
     const  BorderRadius.only(topLeft: Radius.circular(10),
  topRight: Radius.circular(10),
  bottomLeft: Radius.circular(10),
  bottomRight: Radius.circular(0)
            
            
            
            
             ),
            color: Theme.of(context).colorScheme.primaryContainer),
           child: imageUrl==''?Text(message):Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
              child: Image.network(imageUrl)),
              SizedBox(height: 10,),
              Text(message)

           ],),
            ),
             Row(
              mainAxisAlignment: isComing?MainAxisAlignment.start:MainAxisAlignment.end,
               children: [
                 isComing?Text(time,style: Theme.of(context).textTheme.labelMedium,):Row(children: [
                  Text(time,style: Theme.of(context).textTheme.labelMedium,),
                  SizedBox(width: 10,),
                   SvgPicture.asset(AssetsImage.chatStatusSVG,height: 15,)
                 ],),
               ],
             )
        ],
      ),
    );
  }
}