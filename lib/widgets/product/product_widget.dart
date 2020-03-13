import 'package:flutter_ecommerce_test/models/product_model.dart';
import 'package:flutter_ecommerce_test/screens/product/product_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({Key key, this.product}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(10.0),
      width: 150.0,
      decoration: BoxDecoration(
        border: Border.all(
          color:Colors.grey.withOpacity(0.8)
        ),
        
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (_) => ProductDetailScreen(product: product,)

          ));
        },
        child: Hero(
          tag: product.imageUrl,
          child: Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 100.0,
                child: Image.asset(product.imageUrl),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('US \$${product.price.toStringAsFixed(2)}'),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('US \$30',
                  style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough

                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
