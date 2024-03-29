import 'package:flutter/material.dart';
import 'package:shopapp_tut/components/products.dart';
import 'package:shopapp_tut/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> new HomePage()));} ,
            child: Text(' Product Details ')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white ,), onPressed: (){}),

        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
             footer: new Container(
               color: Colors.white70 ,
               child: ListTile(
                 leading: new Text(widget.product_detail_name,
                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0) ,),
                 title: new Row(
                   children: <Widget>[
                     Expanded(
                       child: new Text("\RM${widget.product_detail_old_price}",
                       style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                     ),

                     Expanded(
                         child: new Text("\RM${widget.product_detail_new_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red ) , )
                     ),

                   ],

                 ),
               ),
             ),
            ) ,
          ),

//          The First Button

          Row(
            children: <Widget>[

//              The Size Button

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("Close"),)
                          
                        ],
                      );
                    });
                  },
                color: Colors.white,
                textColor: Colors.grey,
                  elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Size:")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),

                  ],
                ) ,),
              ),

              //              The Size Button

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose a color"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),)

                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color:")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),

                    ],
                  ) ,),
              ),

              //              The Size Button

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Choose the quantity "),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),)

                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty:")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),

                    ],
                  ),
                  

                ),
              ),





            ],
          ),

          //          The Second Button

          Row(
            children: <Widget>[

//              The Size Button

              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now")
                ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,) ,onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border),color: Colors.red ,onPressed: (){}),



            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("High quality, Breathable & Comfortable 100 % Polyester climate fabric wicks sweat away to keep you dry and comfortable in any condition The left breast shuttle national team badge Environmental regeneration technology"),
          ),
          Divider(),
      new Row(
        children: <Widget>[
          Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
          child: new Text("Product name", style: TextStyle(color: Colors.grey) ,) ,),
          Padding(padding: EdgeInsets.all(5.0),
            child: new Text(widget.product_detail_name) ,)
        ],
      ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey) ,) ,),

//            REMEMBER TO CREATE THE PRODUCT BRAND
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X") ,)
            ],
          ),

          Divider(),
          new Text("Similar products"),


//        ADD THE PRODUCT CONDITION
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey) ,) ,),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("NEW") ,)
            ],
          ),

//          SIMILAR PRODUCTS SECTION
        Container(
          height: 340.0,
          child: Similar_products(),
        )
        ],
      ),
    );
  }
}

class  Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

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
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

