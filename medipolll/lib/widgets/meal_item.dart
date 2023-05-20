import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medipolll/models/meal.dart';


//Widget mediaPreview;
int mediaPreview=1;

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String text;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordibility;

  const MealItem(this.id, this.title, this.imageUrl, this.duration,
      this.complexity, this.affordibility, this.text,);

  String get complexityText {
    if (complexity == Complexity.Challenging) {
      return 'High';
    } else if (complexity == Complexity.Hard) {
      return 'Mid';
    } else {
      return 'Low';
    }
  }

  get affordabilityTest {
    if (affordibility == Affordability.Affordable) {
      return 'Affordable';
    } else if (affordibility == Affordability.Luxurious) {
      return 'Luxurious';
    } else if (affordibility == Affordability.Pricey) {
      return 'Pricey';
    }
  }

  Row buildPostOwnerHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 60.0,
          backgroundColor: Colors.grey[200],
          backgroundImage: NetworkImage(
              "https://d.wattpad.com/story_parts/74/images/15887ec0bed4fc82983814236794.jpg"),
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          'Aden Özilhan',
          style: TextStyle(color: Colors.black,fontSize: 18),
        ),
      ],
    );
  }

  configureMediaPreview(context) {
    var mediaPreview = Container(
      color: Colors.white,
      height: 50.0,
      width: 50.0,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: Image.network(
            imageUrl,
            height: 12,
            width: 20,
           // fit: BoxFit.cover,
          fit:BoxFit.contain,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    configureMediaPreview(context);
    return Padding(
      padding: EdgeInsets.only(bottom: 2.0),
      child: Container(
        height: 900,
        width: 650,
        color: Colors.grey[200],
        child: ListTile(
          title: GestureDetector(
            onTap: () => print('ads'),
            child: RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                  style: TextStyle(
                    fontSize: 23.0,
                    color: Colors.black26,
                    height: 3,
                  ),
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
          subtitle: SingleChildScrollView(
          child: Row(
            children: [
             /* Text(
                'Aden Özilhan',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontFamily:"Raleway",fontSize:17,color: Colors.black),
              ),
              SizedBox(
                width: 1,
              ),*/
              IconTheme(
                data: new IconThemeData(color: Colors.red),
                child: new Icon(Icons.priority_high_rounded),
              ),
              SizedBox(
                width: 1,
              ),
              Text(
                text,
                style: TextStyle(fontFamily:"Raleway",fontSize:16,color: Colors.black),
                textAlign: TextAlign.start,
              ),
              /*Expanded(
                flex: 2,
                child: Image.network(imageUrl),
              )*/
              ],
          ),
        ),
            ),
    ));
  }
}

