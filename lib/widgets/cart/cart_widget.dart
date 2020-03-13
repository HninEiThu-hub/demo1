import 'package:flutter_ecommerce_test/models/product_model.dart';
import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  final Product product;

  const CartWidget({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(20.0),
      leading: Image.asset(
        product.imageUrl,
        height: double.infinity,
        width: 100.0,

      ),
      title: Text(
        product.name,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold
        ),
      ),
      trailing: Text(
        '\$${product.price.toStringAsFixed(2)}',
        style: TextStyle(
          color: Colors.orangeAccent,
          fontWeight: FontWeight.bold,
          fontSize: 16.0
        ),
      ),
    );
  }
}
