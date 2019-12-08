import 'package:flutter/material.dart';
import 'package:shopapp_tut/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "CHELSEA",
      "picture": "images/products/chelsea.PNG",
      "old_price" : 60,
      "price": 40,
    },

    {
      "name": "LIVERPOOL",
      "picture": "images/products/liv.PNG",
      "old_price" : 60,
      "price": 40,
    },

    {
      "name": "MARVEL IRONMAN",
      "picture": "images/products/ironman.jpg",
      "old_price" : 60,
      "price": 40,
    },

    {
      "name": "PUBG",
      "picture": "images/products/pubg.PNG",
      "old_price" : 60,
      "price": 40,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
           prod_name: product_list[index]['name'],
           prod_pricture: product_list[index]['picture'],
           prod_old_price: product_list[index]['old_price'],
           prod_price: product_list[index]['price'],
            );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                //here we are passing the values of the product to the product details page
                   builder: (context)=> new ProductDetails(
                     product_detail_name: prod_name ,
                     product_detail_new_price: prod_price,
                     product_detail_old_price: prod_old_price,
                     product_detail_picture: prod_pricture,
                   ))),

           child:GridTile(
               footer: Container(
                 color: Colors.white,
                 child: new Row(children: <Widget>[
                   Expanded(
                     child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0  ),),
                   ),
                   
                   new Text("\$${prod_price} ", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold ) ,)
                 ],) 
               ) ,
               child:Image.asset(
                 prod_pricture,
               fit: BoxFit.cover,)) ,
          ),
          )),
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                //here we are passing the values of the product to the product details page
                  builder: (context)=> new ProductDetails(
                    product_detail_name: prod_name ,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_pricture,
                  ))),

              child:GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: new Row(children: <Widget>[
                        Expanded(
                          child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0  ),),
                        ),

                        new Text("\$${prod_price} ", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold ) ,)
                      ],)
                  ) ,
                  child:Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,)) ,
            ),
          )),
    );
  }
}

