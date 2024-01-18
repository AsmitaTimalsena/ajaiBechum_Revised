import 'package:ajai_bechum_seller/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ajai_bechum_seller/screens/wishlist.dart';
import 'package:line_icons/line_icons.dart';

import 'home_screen.dart';
import 'wishlist.dart';
class Screens extends StatefulWidget {
  @override
  State<Screens> createState()=>_ScreensState();
}
class _ScreensState extends State<Screens>{
  int _selectedindex=0;
 static List<Widget> _widgetOptions = <Widget>[
  HomeScreen(),
  CartScreen(),
  wishlist(),
  Container(),
 ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body:_widgetOptions.elementAt(_selectedindex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration( 
          color:Colors.white,
          boxShadow: [
            BoxShadow(
           blurRadius:20,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
        ),
        child: SafeArea(
          child:Padding( 
            padding:EdgeInsets.symmetric (horizontal: 15, vertical:8) ,
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap:8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              color:Colors.black,
              tabs: [
                GButton(icon: LineIcons.home, text:'Home'),
                GButton(icon: LineIcons.shoppingBag, text:'cart'),
                GButton(icon: LineIcons.heart, text:'whishlist'),
                GButton(icon: LineIcons.user, text:'profile'),
              ],
              selectedIndex: _selectedindex,
              onTabChange:(index){
                setState(() {
                  _selectedindex =index;
                });
              },
            ),
          )
        ),
      )
    );
  }
}