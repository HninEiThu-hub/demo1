import 'package:flutter_ecommerce_test/models/product_model.dart';
import 'package:flutter_ecommerce_test/screens/product/product_detail_screen.dart';
import 'package:flutter/material.dart';

class RecentProductWidget extends StatelessWidget {
  final Product product;

  const RecentProductWidget({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) =>
              ProductDetailScreen(product: product,)
          ));
        },
        child: Hero(
          tag: product.imageUrl,
          child: Card(
            child: GridTile(
              child: Container(
                child: Image.asset(product.imageUrl,fit: BoxFit.cover,),
                height: 100.0,
                width: 150.0,
              ),
              footer: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(product.name,
                      style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Text('\$${product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),),
                    )

                  ],

                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}
