import 'package:flutter/material.dart';

import '../../data/model/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left:25),
      width: 280,
      decoration:BoxDecoration(color: Colors.grey[100],
      borderRadius:BorderRadius.circular(12)),
      child:const Column(children: [

      ],),
    );
  }
}
