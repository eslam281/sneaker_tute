
import 'package:flutter/material.dart';
import 'package:sneakertute/view/components/bottom_nav_bar.dart';
import 'package:sneakertute/view/screen/cart_page.dart';
import 'package:sneakertute/view/screen/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selecteIndex=0;

  void navigateBottomBar( int index){
    setState(() {
      _selecteIndex=index;
    });
  }

  final List<Widget> _pages =[
    const ShopPage(),
    const CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[300],
      bottomNavigationBar:MyBottomNavBar(
        onTabChange:(index) => navigateBottomBar( index) ,
      ),
      body:_pages[_selecteIndex],
    );
  }
}
