import 'package:flutter/material.dart';

class BackButton2 extends StatelessWidget {
  final Function()? onPressed;
  final bool? fromDark;
  const BackButton2({super.key, this.onPressed, this.fromDark=false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPressed!();
      },
      child: Container(
        width: 50,height:  50 , 
      padding: EdgeInsets.zero,
        decoration: BoxDecoration(
      color: Colors.grey.withOpacity(.20),
      borderRadius: BorderRadius.circular(15), 
      
        ),
      alignment: Alignment.center,
      child:  Center(child: 
      Icon(Icons.arrow_back_ios ,size: 20, color:
      
      fromDark!? Colors.white:
       Colors.black,),
       
       ),
      ),
    );
  }
}