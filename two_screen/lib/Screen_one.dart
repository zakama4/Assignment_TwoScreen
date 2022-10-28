
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:two_screen/Second_Screen.dart';

class screenOne extends StatelessWidget {
   screenOne({Key? key}) : super(key: key);
  String name = "Zakarie Mohamud Abdi";
  String img = "images/z.jpg";
   //final data = ["zaki",""];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
        //backgroundColor: Colors.cyan,
        centerTitle: true,
        actions: [Icon (Icons.more_vert)],
        elevation: 16,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //height: 200,
            //margin:const  EdgeInsets.only(top: 1),
            child: Image.asset(img
            // width: 500,
            // fit:BoxFit.cover
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>  Second_Screen(name:name,img: img)));
            }, child: const Text("Go Second screen")),
          )

      ],),
    );
  }
}