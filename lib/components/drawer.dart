import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/cart.dart';

class Drawer_Data extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawer_Data> {
  @override
  Widget build(BuildContext context) {
    return  
       new ListView(
        children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text("Tikam Talreja")
            ,accountEmail: Text("tikamtalreja@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color:Colors.white,),
              ),
            ),
           decoration: new BoxDecoration(
             color: Colors.red
           ), 
           ),
//          body
            InkWell(
              onTap: (){},
                          child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),
           InkWell(
              onTap: (){},
                          child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
                          child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.red),
              ),
            ),

             InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));},
                          child: ListTile(
                title: Text('shopping cart'),
                leading: Icon(Icons.shopping_cart,color: Colors.red),
              ),
            ),

             InkWell(
              onTap: (){},
                          child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),
            Divider(),
             InkWell(
              onTap: (){},
                          child: ListTile(
                title: Text('setting'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
                          child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.blue,),
              ),
            )
          ],
      );
      

  
  }
}