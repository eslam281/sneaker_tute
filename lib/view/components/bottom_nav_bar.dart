import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key, this.onTabChange});
  final void Function(int)? onTabChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: GNav(
        color:Colors.grey[400],
        activeColor:Colors.grey.shade700,
          tabActiveBorder:Border.all(color:Colors.white),
          tabBackgroundColor:Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius:16,
          onTabChange:(value) =>  onTabChange!(value),
          tabs:const [
            GButton(icon: Icons.home,text:"Shop",),
            GButton(icon: Icons.shopping_bag_outlined,text:"Cart",),
          ]),
    );
  }
}
