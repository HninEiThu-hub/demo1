import 'package:flutter_ecommerce_test/models/category_model.dart';
import 'package:flutter_ecommerce_test/models/product_model.dart';
import 'package:flutter_ecommerce_test/screens/cart/cart_screen.dart';
import 'package:flutter_ecommerce_test/screens/category/category_secreen.dart';
import 'package:flutter_ecommerce_test/screens/product/product_horizontal_screen.dart';
import 'package:flutter_ecommerce_test/screens/product/recent_product_screen.dart';
import 'package:flutter_ecommerce_test/widgets/app_drawer.dart';
import 'package:flutter_ecommerce_test/widgets/image_carousel.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => CartScreen(cartProduct: cart,)));
            },
            icon: Icon(Icons.shopping_cart),

          )
        ],
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: <Widget>[
          imagesCarousel,
          ProductHorizontalScreen(title: 'Prime Deal',products: products,),
          CategoryScreen(title: 'Category',categories: categories,),
          RecentProductScreen(title: 'Recent Products', recentProducts: recentProducts,),

        ],
      ),
    );
  }
}
