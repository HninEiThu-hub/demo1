import 'package:flutter_ecommerce_test/models/product_model.dart';
import 'package:flutter_ecommerce_test/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              currentAccountPicture: Padding(
                padding: const EdgeInsets.only(left: 16.0,bottom: 0.0),
                child: CircleAvatar(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/products/blazer1.jpeg'),
                        fit: BoxFit.cover
                      )

                    ),
                  ),
                ),
              ),
              accountName: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Hnin Ei Thu',
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
              accountEmail: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('hninei112@gmail.com',style: TextStyle(
                    color: Colors.white
                ),),
              ),
            ),

            InkWell(
              onTap: (){
                print('Pressed home');
              },
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  size: 26.0,
                ),
                title: Text('Home',
                style: TextStyle(
                  fontSize: 18.0
                ),),


              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => CartScreen(cartProduct: cart,)));
              },
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  size: 26.0,
                ),
                title: Text('My Cart',
                  style: TextStyle(
                      fontSize: 18.0
                  ),),


              ),
            ),
            InkWell(
              onTap: (){
                print('Pressed');
              },
              child: ListTile(
                leading: Icon(
                  Icons.account_balance,
                  size: 26.0,
                ),
                title: Text('Payment',
                  style: TextStyle(
                      fontSize: 18.0
                  ),),


              ),
            ),
            InkWell(
              onTap: (){
                print('Pressed');
              },
              child: ListTile(
                leading: Icon(
                  Icons.account_balance_wallet,
                  size: 26.0,
                ),
                title: Text('Wish List',
                  style: TextStyle(
                      fontSize: 18.0
                  ),),


              ),
            ),
            InkWell(
              onTap: (){
                print('Pressed');
              },
              child: ListTile(
                leading: Icon(
                  Icons.message,
                  size: 26.0,
                ),
                title: Text('Message',
                  style: TextStyle(
                      fontSize: 18.0
                  ),),


              ),
            ),
            Divider(),
            InkWell(
              onTap: (){
                print('Pressed');
              },
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 26.0,
                ),
                title: Text('Settings',
                  style: TextStyle(
                      fontSize: 18.0
                  ),),


              ),
            ),
            InkWell(
              onTap: (){
                print('Pressed');
              },
              child: ListTile(
                leading: Icon(
                  Icons.headset,
                  size: 26.0,
                ),
                title: Text('Help',
                  style: TextStyle(
                      fontSize: 18.0
                  ),),


              ),
            ),
          ],
        ),
      ),
    );
  }
}

