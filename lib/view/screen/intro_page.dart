import 'package:flutter/material.dart';

import '../../core/const/images.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[300],
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.all(25),
              child: Image.asset(ImageAssets.nike,colorBlendMode:BlendMode.darken , color:Colors.grey[300],),
              ),

             const SizedBox(height: 48,),

              const Text("Just Do It",
              style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),

              const SizedBox(height: 24,),
              const Text("Brand new sneakers and custom kicks made with premium quality",
              style: TextStyle(fontSize: 16,color:Colors.grey),textAlign: TextAlign.center,),

              const SizedBox(height: 48,),

              GestureDetector(
                onTap:() => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage(),)),
                child: Container(
                  padding:const EdgeInsets.all(25),
                  decoration:BoxDecoration(
                    color:Colors.grey[900],borderRadius:BorderRadius.circular(12)
                  ),
                  child:const Center(
                    child: Text("Shop Now",style:TextStyle(color:Colors.white,
                        fontSize:20,fontWeight:FontWeight.bold),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
