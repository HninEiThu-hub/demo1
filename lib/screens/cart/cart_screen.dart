import 'package:flutter_ecommerce_test/models/product_model.dart';
import 'package:flutter_ecommerce_test/widgets/cart/cart_widget.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {

  final List<Product> cartProduct;

  const CartScreen({Key key,@required this.cartProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
       leading: IconButton(
         onPressed: (){
          Navigator.pop(context);
         },
         icon: Icon(Icons.arrow_back_ios),


       ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: cartProduct.length,
            itemBuilder: (context,int index) =>
                CartWidget(product: cartProduct[index],)
        ),
      ),
    );
  }
}
