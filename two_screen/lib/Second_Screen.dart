
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:two_screen/Screen_one.dart';

class Second_Screen extends StatelessWidget {
   Second_Screen({Key? key,this.name,this.img}) : super(key: key);
  String? name ;
  String? img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
        elevation: 16,
      ),
       body: Column(
         children:  [
           Container(
             child: Image.asset(img!),
           ),
           Container(
            margin: const EdgeInsets.only(top: 20),
             child: Text(name!,style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
           ),

           Container(
            margin: const EdgeInsets.only(top: 20),
             child: ElevatedButton(onPressed: (){
               //Navigator.push(context, MaterialPageRoute(builder: (_) => const screenOne()));
               Navigator.pop(context);
             }, 
             child: const Text("Back")),
           )

         ],
         )
    );
   
  }
}

