import 'package:flutter_ecommerce_test/models/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;

  const CategoryWidget({Key key, @required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset(
                category.imagePath,
                width:140.0,
                height:double.infinity
                ,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 20,
              top: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7,vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Text(category.title,
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
