import 'package:flutter_ecommerce_test/models/category_model.dart';
import 'package:flutter_ecommerce_test/widgets/category/category_widgets.dart';
import 'package:flutter/cupertino.dart';

class CategoryScreen extends StatelessWidget {
  final String title;
  final List<Category> categories;

  const CategoryScreen({Key key,@required this.title,@required this.categories}) : super(key: key);
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
             fontSize: 18.0,
             fontWeight: FontWeight.bold,
           ),),
         ),
          GridView.builder(
           itemCount: categories.length,
           physics: ScrollPhysics(),
           shrinkWrap: true,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
           itemBuilder: (context,int index) =>
               CategoryWidget(category: categories[index],),
         ),
       ],
     ),
    );
  }
}
