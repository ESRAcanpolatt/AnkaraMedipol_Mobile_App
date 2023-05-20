import 'package:flutter/material.dart';
import 'package:medipolll/screens/gezi.dart';
import 'package:medipolll/screens/maps.dart';
import 'package:medipolll/screens/mebis.dart';
import 'package:medipolll/screens/medipol_news.dart';
import 'package:medipolll/screens/pictures_school.dart';
import 'package:medipolll/screens/social_media.dart';
import 'package:medipolll/screens/tto.dart';
import 'package:medipolll/widgets/tabs_screen.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 65,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://d.wattpad.com/story_parts/74/images/15887ec0bed4fc82983814236794.jpg"),),
                SizedBox(width: 20,),
                Text("Aden Özilhan", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,
                  ),),],),),
          SizedBox(height: 10,),
          ListTile(onTap: () {Navigator.push(context,
                MaterialPageRoute(builder: (context) => TabScreen()),);},
            leading: Icon(Icons.person, size: 27, color: Colors.blueGrey,),
            title: Text("Profil", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),),),
          ListTile(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => NewsPage()),);},
            leading: Icon(Icons.book_outlined, size: 27, color: Colors.blueGrey,),
            title: Text(
              "Medipol Zamanı",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapScreen()),
              );
            },
            leading: Icon(
              Icons.map_outlined,
              size: 27,
              color: Colors.blueGrey,
            ),
            title: Text(
              "Medipol Haritası",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>PictureSchools()),
              );
            },
            leading: Icon(
              Icons.home_outlined,
              size: 27,
              color: Colors.blueGrey,
            ),
            title: Text(
              "Üniversiteden Görüntüler",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TTO()),
              );
            },
            leading: Icon(
              Icons.rocket_launch_outlined,
              size: 27,
              color: Colors.blueGrey,
            ),
            title: Text(
              "TTO",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mebis()),
              );
            },
            leading: Icon(
              Icons.school_outlined,
              size: 27,
              color: Colors.blueGrey,
            ),
            title: Text(
              "Ankara Medipol Mebis",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
              //  MaterialPageRoute(builder: (context) =>SocialMedia('https://twitter.com/AnkaraMedipol')),
                MaterialPageRoute(builder: (context)=>SocialMedia()),
              );
            },
            leading: Icon(
              Icons.recommend,
              size: 27,
              color: Colors.blueGrey,
            ),
            title: Text(
              "Sosyal Medya",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Gezi()),
              );
            },
            leading: Icon(
              Icons.park_outlined,
              size: 27,
              color: Colors.green,
            ),
            title: Text(
              "Ziyaret Edilecek Yerler",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      ));
  }
}
