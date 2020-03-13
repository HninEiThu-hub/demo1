import 'package:flutter_ecommerce_test/models/product_model.dart';
import 'package:flutter_ecommerce_test/screens/cart/cart_screen.dart';
import 'package:flutter_ecommerce_test/screens/product/recent_product_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({Key key, this.product}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  var _sizeArray = ["S", "M", "L", "XL", "XXL"];
  var _colorArray = ["Yellow", "Black", "White", "Pink"];
  String currentSelectedSize = 'S';
  String currentSelectedColor = 'Yellow';
  int totalQty = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),

        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => CartScreen(cartProduct: cart,)));

            },
            icon: Icon(

              Icons.shopping_cart,

            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                child: Image.asset(
                  widget.product.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
              footer: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.product.name,
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '\$${widget.product.price.toStringAsFixed(2)}',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            height: 0.5,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
            child: Row(
              children: <Widget>[
                //size selection
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Size',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      DropdownButton<String>(
                        items: _sizeArray.map((String dropDownItemValue) {
                          return DropdownMenuItem<String>(
                            value: dropDownItemValue,
                            child: Center(
                              child: Text(
                                dropDownItemValue,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.deepOrangeAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        }).toList(),
                        underline: Container(
                          color: Colors.white,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            currentSelectedSize = newValue;
                          });
                        },
                        value: currentSelectedSize,
                      )
                    ],
                  ),
                ),
                //Color Selection
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      DropdownButton<String>(
                        items: _colorArray.map((String dropDownItemValue) {
                          return DropdownMenuItem<String>(
                            value: dropDownItemValue,
                            child: Center(
                              child: Text(
                                dropDownItemValue,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.deepOrangeAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        }).toList(),
                        underline: Container(
                          color: Colors.white,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            currentSelectedColor = newValue;
                          });
                        },
                        value: currentSelectedColor,
                      )
                    ],
                  ),
                ),
                //Quantity Selection
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Qty',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          totalQty.toString(),
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    totalQty += 1;
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.deepOrangeAccent,
                                )),
                            totalQty ==0 ? Icon(Icons.arrow_drop_down,color: Colors.deepOrangeAccent,) : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    totalQty -= 1;
                                  });
                                },
                                child:Icon(
                              Icons.arrow_drop_down,
                              color: Colors.deepOrangeAccent,
                            )),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Expanded(
                    flex: 2,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      elevation: 0.2,
                      onPressed: (){},
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      child: Text('Buy Now'),


                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: Icon(Icons.shopping_cart,color: Colors.redAccent,)),

                Expanded(
                  flex: 1,
                    child: Icon(Icons.favorite,color: Colors.redAccent,)),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
            thickness: 1,
            height: 2,
          ),
         ListTile(
           title: Text('Product Detail'),
           subtitle: Text(widget.product.description,
           style: TextStyle(
             letterSpacing: 0.3
           ),),
         ),
          Row(
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text('Product Name',style: TextStyle(
                color: Colors.grey
              ),),
            ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(widget.product.name),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product Brand',style: TextStyle(
                    color: Colors.grey
                ),),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Brand X'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product Condition',style: TextStyle(
                    color: Colors.grey
                ),),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("New"),
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 10,),
          RecentProductScreen(title: 'Similar Product',recentProducts: books,)
        ],
      ),
    );
  }
}
