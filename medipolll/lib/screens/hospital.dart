import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Hospital extends StatelessWidget {
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
              height: 900,
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
                                image: AssetImage('assets/images/logoo.png'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'MEDİPOL DİŞ HASTANESİ ',
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      "Medipol sağlık grubunun en yeni açılan hastanesi, Ankara Medipol Üniversitesi Ağız ve Diş Sağlığı Uygulama ve Araştırma Merkezi Anafartalar\n"
                          "Diş Hastanesi,Başkent Ankara’nın merkezinde Sıhhıye semtinde hizmet vermeye başladı. Öncelikli hedefimiz; Alanında uzman ve deneyimli hekimlerimiz ile uygulanan tedavilerle hastalarımızın beklenti ve ihtiyaçlarını en iyi şekilde değerlendirip,ağız ve diş sağlığı konusunda her türlü talebinizi ileri tıp teknolojileri kullanılarak tek bir merkezde güçlü sağlık kadrosu ile karşılamak."
                          "Ankara Medipol Üniversitesi Ağız ve Diş Sağlığı Uygulama ve Araştırma Merkezi;klinikleri, yataklı servisi ve ameliyathaneleri ile yaklaşık 20 doktor ve 60 idari ve yardımcı sağlık personeli ile entegre sağlık hizmeti vermektedir. Adres: Eti Mahallesi, Celal Bayar Blv. No:88, 06570 Çankaya/Ankara\n"),
                  Expanded(
                    child:Scrollbar(  //Kaydırma çubuğu.
                      thickness: 9,
                        radius: Radius.circular(20),
                      isAlwaysShown: true,
                    child: ListView(
                      //ListView kendisine verilen widget listesini; tanımlanan scrollDirection'a göre alt alta ya da yan yana sıralar ve scroll edilebilir bir kullanımda oluşturur.
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Container(
                            //Container'ı, Flutter'da istediğimiz gibi konumlandırabileceğimiz, şekillendirebileceğimiz ve içerisine nesneler yerleştirebileceğimiz kutular .
                            margin: EdgeInsets.all(10),
                           // height: MediaQuery.of(context).size.width / 2,
                            //width: MediaQuery.of(context).size.width,
                            height: 300,
                            width: 500,
                            decoration: BoxDecoration(
                              //BoxDecoration, Container dediğimiz kutuları şekillendirmeye, boyamaya ve istenilen türde kutu yaratmaya yarayan dekorasyon aracıdır.
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/hastane.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.width / 2,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/hastaneee.png"),
                                    fit: BoxFit.cover //BoxFit.cover: Resme zoom yaparak çerçeveye sığdırır.
                                   )),
                          ),

                          Text("           Ankara Medipol Üniversitesi Ağız ve Diş Sağlığı Uygulama ve \n"
                              "                     Araştırma Merkezi Anafartalar Diş Hastanesinde\n\n"

                              "-Ağız Diş ve Çene Cerrahisi\n"
                              "-Protetik Diş Tedavisi\n"
                              "-Restoratif\n"
                              "-Periodontoloji\n"
                              "-Pedodonti\n"
                              "-Ortodonti\n"
                              "-Endodonti\n"
                              "-Ağız Diş ve Çene Radyolojisi\n""Branşlarında hizmet verilmektedir."),
                       SizedBox(height: 10,),
                       ElevatedButton.icon(
                          onPressed: () => launch("tel://4442010"),
                           icon: Icon(Icons.call),
                           label: Text('Çağrı',style: TextStyle(fontSize: 14),),
                         style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30),),
                         ),
                        ),

                  ])))],
              ),
            )));
  }
}