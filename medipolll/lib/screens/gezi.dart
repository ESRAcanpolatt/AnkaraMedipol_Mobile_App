import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Gezi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Material(
            color: Colors.grey.shade100,
            elevation: 4,
            borderRadius: BorderRadius.circular(20),
            child: Container(
                padding: EdgeInsets.all(20),
                height: 300,
                width: double.infinity,
                child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/med_logo.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              'Ziyaret Edilecek Yerler',
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 8,),
                      Expanded(
                          child: Container(
                              height: 100,
                              child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Ankara’nın kalbi Altındağ ilçesinde ziyaret edilebilecek çeşitli müze, tarihi bina, park vb.sosyal alanlar hakkında\n"
                                          "detaylı bilgi almak için Altındağ Belediyesi tarafından hazırlanan gezi rehberini incelemenizi tavsiye ederiz.\n",
                                      style:TextStyle(fontSize: 18) ,),
                                    RichText(text: TextSpan(
                                      text: 'Gezilecek yerleri görmek için tıklayınız\n',
                                      style: new TextStyle(color: Colors.indigo,fontSize: 18),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () { launch('https://www.altindag.bel.tr/#!gezilecek_yerler');
                                        },
                                    )
                                    ),
                                    RichText(text: TextSpan( //Link üzerinden erişebilmeyi sağlar.
                                      text: 'Kamp alanlarını görmek için tıklayınız\n',
                                      style: new TextStyle(color: Colors.indigo,fontSize: 18),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () { launch('https://kampist.org/wp-content/plugins/wp-first-letter-avatar/images/default/256/latin_f.png');
                                        },)),
                              Expanded(child:Scrollbar(thickness: 4, radius: Radius.circular(20), isAlwaysShown: true,
                                  //thickness:Scrollbar çubuğunun kalınlığını ayarlar.
                                  //radius: Scrollbar çubuğunu verilen açıda şekillendirir.
                                  child: ListView(scrollDirection: Axis.horizontal,
                                      children: <Widget>[
                                        Container(margin: EdgeInsets.all(10), height: MediaQuery.of(context).size.width / 2, width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), image: DecorationImage(
                                              image: AssetImage("assets/images/gezi.jpg"), fit: BoxFit.cover)),
                                        ),
                                        Container(margin: EdgeInsets.all(10), height: MediaQuery.of(context).size.width / 2, width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), image: DecorationImage(
                                              image: AssetImage("assets/images/geZi.2.jpg"), fit: BoxFit.cover)),),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          height: MediaQuery.of(context).size.width / 2,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              image: DecorationImage(
                                                  image: AssetImage("assets/images/kampp.png"),
                                                  fit: BoxFit.cover)),
                                        ),
                                  ])
                          ))])))]
    ))));
  }
}
