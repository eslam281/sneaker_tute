
import 'package:flutter/material.dart';
import 'package:sneakertute/view/components/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[300],
      bottomNavigationBar:const MyBottomNavBar(),
    );
  }
}
