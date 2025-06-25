import 'package:flutter/material.dart';

import '../../core/const/images.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[300],
      body:Column(
        children: [
          Padding(padding: const EdgeInsets.all(25),
          child: Image.asset(AssetsImage.nike),
          ),

         const SizedBox(height: 48,),

          const Text("Just Do It",
          style:TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),

          const SizedBox(height: 24,),
        ],
      ),
    );
  }
}
