import 'package:flutter/material.dart';

class Card_button extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Color(0xff1E1E1E),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),),
      child: Row(

        children: [
          Container(
            height: 58,
            width: 80,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(

                  image:AssetImage('images/download.jpeg'),
                )
            ),
          ),
          SizedBox(width: 20,),
          Text('AOT ',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
        ],
      ),

    );
  }
}
