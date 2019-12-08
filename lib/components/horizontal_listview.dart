import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Category(
          image_location: 'images/cats/bikini.png',
          image_caption: 'BIKINI',
        ),

          Category(
            image_location: 'images/cats/blouse.png',
            image_caption: 'BLOUSE',
          ),

          Category(
            image_location: 'images/cats/boots.png',
            image_caption: 'BOOTS',
          ),

          Category(
            image_location: 'images/cats/bowlerhat.png',
            image_caption: 'BOWLER HAT',
          ),

          Category(
            image_location: 'images/cats/coat.png',
            image_caption: 'COAT',
          ),



        ],

      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this. image_caption
});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){} ,

    child: Container(
      width: 100.0,
      child: ListTile(
        title: Image.asset(image_location,
        width:100.0 ,
        height:80.0 ,),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption, style: new TextStyle(fontSize: 12.0) ,),
        )
      ),
    ),
    ),);
  }
}

