import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart = [{
      "name":"Blazzer",
      "picture":"images/products/blazer1.jpeg",
      "price":85,
      "size":"M",
      "color":"Red",
      "quantity":1,


    },
    {
      "name":"Blazzer 2",
      "picture":"images/products/blazer2.jpeg",
      "price":85,
      "size":"M",
      "color":"Red",
      "quantity":1,

    },
    {
      "name":"dress",
      "picture":"images/products/dress1.jpeg",
      "price":85,
      "size":"M",
      "color":"Red",
      "quantity":1,

    },
    {
      "name":"dress 2",
      "picture":"images/products/dress2.jpeg",
      "price":85,
      "size":"M",
      "color":"Red",
      "quantity":1,

    },
    
    ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (context,index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_quantity: Products_on_the_cart[index]["quantity"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_pricture: Products_on_the_cart[index]["picture"],
          cart_prod_size: Products_on_the_cart[index]["size"],
        );
      },
      itemCount: Products_on_the_cart.length,
      
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_pricture,
    this.cart_prod_price,
    this.cart_prod_quantity,
    this.cart_prod_size,
    this.cart_prod_color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
         child: Center(
                    child: Card(
      
      child: ListTile(
            
        leading: new Image.asset(cart_prod_pricture,width: 80.0,height: 90.0,),
        title: Padding(padding: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0),
          child: new Text(cart_prod_name)),
        subtitle: new Column(
            children: <Widget>[
              // row inside  column
              new Row(
                children: <Widget>[
                 Padding(padding: EdgeInsets.all(0.0),
                   child: new Text("size:")),
                 Padding(padding: EdgeInsets.all(4.0),
                   child: new Text(cart_prod_size,style: TextStyle(color: Colors.red),)),  
                  new Padding(padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("color") ,),
                  Padding(padding: EdgeInsets.all(4.0),
                   child: new Text(cart_prod_color,style: TextStyle(color: Colors.red),)), 
                   
                ],
              ),
              new Container(
                alignment: Alignment.topLeft,
                child: new Text("${cart_prod_price}",style: TextStyle(color: Colors.red,fontSize: 17.0,fontWeight: FontWeight.bold,),
              )
              )],
        ),
        trailing: new Column(
              children: <Widget>[
                new IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){},),
                new Text("$cart_prod_quantity",style: TextStyle(fontSize: 8.0)),
                 new IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){},)
              ],
          ),
        ),
      ),
    ),
         );
  }
  
}