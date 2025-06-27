
import 'package:flutter/material.dart';
import 'package:sneakertute/view/components/bottom_nav_bar.dart';
import 'package:sneakertute/view/screen/cart_page.dart';
import 'package:sneakertute/view/screen/shop_page.dart';

import '../../core/const/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;

  void navigateBottomBar( int index){
    setState(() {
      _selectedIndex=index;
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
      appBar:AppBar(
        backgroundColor:Colors.grey[300],
        elevation: 0,
        // leading:IconButton(onPressed:() {
        //   Scaffold.of(context).openDrawer();
        // } , icon: Icon(Icons.menu,color:Colors.black,)),
      ),
      drawer:Drawer(
        backgroundColor: Colors.grey[900],
        child:Column(children: [
          Column(children: [
            Padding(padding: const EdgeInsets.all(10),child:Image.asset(ImageAssets.nike,
              color:Colors.white,),),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
              child:Divider(color:Colors.grey[800],),),

            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading:Icon(Icons.home,color:Colors.white),
                title:Text("Home",style:TextStyle(color:Colors.white),),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading:Icon(Icons.info,color:Colors.white),
                title:Text("About",style:TextStyle(color:Colors.white),),
              ),
            ),
          ],),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading:Icon(Icons.logout,color:Colors.white),
              title:Text("Logout",style:TextStyle(color:Colors.white),),
            ),
          )
        ],),
      ),
      body:_pages[_selectedIndex],
    );
  }
}
