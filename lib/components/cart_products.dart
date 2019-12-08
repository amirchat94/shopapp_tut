import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "CHELSEA",
      "picture": "images/products/chelsea.PNG",
      "price": 40,
      "size ": "M",
      "color": "Red",
      "quantity": 1,
    },

    {
      "name": "CHELSEA",
      "picture": "images/products/chelsea.PNG",
      "price": 40,
      "size ": "M",
      "color": "Red",
      "quantity": 1,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index){
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"] ,
            cart_prod_qty: Products_on_the_cart[index]["Quantity"],
            cart_prod_size: Products_on_the_cart [index]["Size"],
            cart_prod_price: Products_on_the_cart [index]["Price"],
            cart_prod_pricture: Products_on_the_cart [index]["Picture"],
          ) ;
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_color,
    this.cart_prod_price,
    this.cart_prod_pricture,
    this.cart_prod_qty,
    this.cart_prod_size
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
//            ROW INSIDE THE COLUMN
            new Row(
              children: <Widget>[
//                This section is for the size of the product
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: new Text("Size:"),
               ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(cart_prod_size),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_size),
                ),
                
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:") ,),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

