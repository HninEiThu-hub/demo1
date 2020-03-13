import 'package:flutter_ecommerce_test/models/product_model.dart';
import 'package:flutter_ecommerce_test/widgets/product/recent_product_widget.dart';
import 'package:flutter/material.dart';


class RecentProductScreen extends StatelessWidget {

  final String title;
  final List<Product> recentProducts;

  const RecentProductScreen({Key key,@required this.title,@required this.recentProducts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
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
          GridView.builder(
           itemCount: recentProducts.length,
           physics: ScrollPhysics(),
           shrinkWrap: true,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
           itemBuilder: (context,int index) =>
               RecentProductWidget(product: recentProducts[index],),
         ),
       ],
     ),
    );
  }
}
