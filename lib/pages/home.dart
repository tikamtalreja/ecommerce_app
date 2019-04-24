import 'package:flutter/material.dart';

import 'package:ecommerce_app/components/horizontal_listview.dart';
import 'package:ecommerce_app/components/image_carousel.dart';
import 'package:ecommerce_app/components/drawer.dart';
import 'package:ecommerce_app/components/products.dart';
import 'package:ecommerce_app/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("One Stop"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white),onPressed: (){},),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
          },)
          
        ],
      ),
      drawer: new Drawer(
        child: Drawer_Data()// function is called from another file
      ),
      body: new Column(
        children: <Widget>[
          Image_Carousel(),//function is called from another file
          new Padding(padding: const EdgeInsets.all(8.0),//  to provide space betwwen carousel and list
          child: Container(alignment: Alignment.centerLeft,
            child: Text("Categories")),
          ),
          //horizontal list view begins here
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(14.0),//  to provide space betwwen carousel and list
          child: Container(alignment: Alignment.centerLeft,
            child: Text("Recent Products")),
          ),
          Flexible(child: Products())

        ],
      ),
    );
  }
}