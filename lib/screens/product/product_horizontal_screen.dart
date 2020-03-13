import 'package:flutter_ecommerce_test/models/product_model.dart';
import 'package:flutter_ecommerce_test/widgets/product/product_widget.dart';
import 'package:flutter/cupertino.dart';

class ProductHorizontalScreen extends StatelessWidget {
  final String title;
  final List<Product> products;

  const ProductHorizontalScreen({Key key,this.title,@required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('More..',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],

        ),
         Container(
           height: 200.0,
           child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: products.length,
               itemBuilder: (context,int index) =>
                   ProductWidget(product: products[index],)

           ),
         ),
       ],
     ),
    );
  }
}
