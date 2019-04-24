import 'package:flutter/material.dart';

import 'package:ecommerce_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name":"Blazzer",
      "picture":"images/products/blazer1.jpeg",
      "old price":120,
      "price":85,
    },
    {
      "name":"Blazzer 2",
      "picture":"images/products/blazer2.jpeg",
      "old price":120,
      "price":85,
    },
    {
      "name":"dress",
      "picture":"images/products/dress1.jpeg",
      "old price":120,
      "price":85,
    },
    {
      "name":"dress 2",
      "picture":"images/products/dress2.jpeg",
      "old price":120,
      "price":85,
    },
    {
      "name":"shoes",
      "picture":"images/products/hills1.jpeg",
      "old price":120,
      "price":85,
    },
    {
      "name":"shoes 2",
      "picture":"images/products/hills2.jpeg",
      "old price":120,
      "price":85,
    },
    {
      "name":"pant",
      "picture":"images/products/pants1.jpg",
      "old price":120,
      "price":85,
    },
    {
      "name":"pant 2",
      "picture":"images/products/pants2.jpeg",
      "old price":120,
      "price":85,
    },
    {
      "name":"shoe",
      "picture":"images/products/shoe1.jpg",
      "old price":120,
      "price":85,
    },
    {
      "name":"skirt",
      "picture":"images/products/skt1.jpeg",
      "old price":120,
      "price":85,
    },
    {
      "name":"skirt 2",
      "picture":"images/products/skt2.jpeg",
      "old price":120,
      "price":85,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)
    ,itemBuilder: (BuildContext context,int index){
      return Single_prod(
          prod_name: product_list[index]['name'],
          prod_pricture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old price'],
          prod_price: product_list[index]['price'],
      );
    }
    ,itemCount: product_list.length,);
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child:  new Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: (){ Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context) =>new ProductDetails(
                product_detail_name: prod_name,
                product_detail_new_price: prod_price,
                product_detail_picture: prod_pricture,
                product_detail_price: prod_old_price,

            )));},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                    ),
                    new Text("${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                  ],
                )
              ),
              child: Image.asset(prod_pricture,fit: BoxFit.cover,),
              ),
            ),
            ),
            ),
    );
  }
}