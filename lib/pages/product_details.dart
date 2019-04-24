import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/home.dart';


class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_picture;
  final product_detail_price;

ProductDetails({
  this.product_detail_name,
  this.product_detail_new_price,
  this.product_detail_picture,
  this.product_detail_price
});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: InkWell(child: Text("One Stop"),onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));
        },),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white),onPressed: (){},),
         
          
        ],
      ),
          body: new ListView(
            children: <Widget>[
              new Container(
                height: 300.0,
                child: GridTile(
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(widget.product_detail_picture),
                  ),
                  footer: new Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: new Text(widget.product_detail_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                      title: new Row(
                        children: <Widget>[
                          Expanded(
                           child: new Text("${widget.product_detail_price}",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)
                          ),
                          Expanded(
                         child: new Text("${widget.product_detail_new_price}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // first button  i.e. dropdown button of size
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        showDialog(context: context,builder: (context){
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: new Text("size"),),
                          Expanded(child: new Icon(Icons.arrow_drop_down),),
                        ],
                      ),
                    ),
                  ),

// second button i.e for color option
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        showDialog(context: context,builder: (context){
                          return new AlertDialog(
                            title: new Text("Colors"),
                            content: new Text("choose a Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: new Text("Color"),),
                          Expanded(child: new Icon(Icons.arrow_drop_down),),
                        ],
                      ),
                    ), 
                  ),
                  // third button i.e. for quantity option
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        showDialog(context: context,builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("choose the Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: new Text("Qty"),),
                          Expanded(child: new Icon(Icons.arrow_drop_down),),
                        ],
                      ),

                      
                    ),
                    
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                   Expanded(
                    child: MaterialButton(
                      onPressed: (){},
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: new Text("Buy now")
                    ),
                  ),
                  new IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red),onPressed: (){},),
                  new IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,),onPressed: (){},)

                ],
              ),
              Divider(),
              new ListTile(
                title: new Text("Product details"),
                subtitle: new Text("hello there its a great thing to see u all here itas basicaly a pratice work for my project i wanna explore new thing so i am trying to make all this stuff .hello there its a great thing to see u all here itas basicaly a pratice work for my project i wanna explore new thing so i am trying to make all this stuff ",textAlign: TextAlign.justify,),
              ),
              Divider(),
              new Row(
                children: <Widget>[
                  Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product name",style:TextStyle(color: Colors.grey)),
                  ),
                  Padding(padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_detail_name),)
                ],
              ),
 new Row(
                children: <Widget>[
                  Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product Brand",style:TextStyle(color: Colors.grey)),
                  ),
                  Padding(padding: EdgeInsets.all(5.0),
                  child: new Text("Brand x"),)
                  
               
                ],
              ),
               new Row(
                children: <Widget>[
                  Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product condition",style:TextStyle(color: Colors.grey)),
                  ),
                  Padding(padding: EdgeInsets.all(5.0),
                  child: new Text("New"),)
               
                ],
              ),
             new Divider(),
             Padding(child: new Text("similar products"),
             padding: const EdgeInsets.all(8.0),
             ),
             
              new Container(
                height: 360.0,
                child: Similar_products(),
              )
            ],
          ),


    );
  }
}
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
      return Similar_Single_prod(
          prod_name: product_list[index]['name'],
          prod_pricture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old price'],
          prod_price: product_list[index]['price'],
      );
    }
    ,itemCount: product_list.length,);
  }
}
class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod({
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