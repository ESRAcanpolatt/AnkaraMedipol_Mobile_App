import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medipolll/widgets/login.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity, height: double.infinity, color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,),
            Container(
              margin: EdgeInsets.all(10),
              child: Text("ANKARA MEDİPOL UYGULAMASI", style: GoogleFonts.oswald(fontSize: 40,color: Colors.blueGrey[300]),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //MainAxisAlignment.center olarak ayarlanırsa, Column içerisine eklenen tüm (children) widgetlar, yukarıdan aşağıya hizada ortalanır.
              children: <Widget>[
                Image.asset('assets/images/medipol_logo.png', width: 150, height: 150,),],),
            SizedBox(height: 50,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  //GestureDetector,içine aldığı widgetin bulunduğu bölgeye tıklayınca bir eylem yaratmasını sağlar. Bir nevi buton diyebiliriz.
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage()),);},
                  child: Card(color: Colors.grey[300], elevation: 8, child: ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Container(child: Column(children: <Widget>[
                            Icon(Icons.person, size: 60, color: Colors.blueGrey[300],),
                        Text("Ziyaretçi", style: GoogleFonts.adamina(),)],), height: 100, width: 100,),),),),
                GestureDetector(onTap: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogInPage()),);},
                  child: Card(color: Colors.grey[300], elevation: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.blueGrey[300],
                              ),
                            Text(
                              "Öğrenci",
                              style: GoogleFonts.adamina(),
                            )
                          ],
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ]),
      ),
    );
  }
}