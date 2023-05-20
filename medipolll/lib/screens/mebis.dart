import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

/*class Mebis extends StatelessWidget {
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
                                    image: AssetImage('assets/images/meb.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'MEBİS',
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
                                      "Ankara Medipol Üniversitesi öğrencilerinin kullandığı otomasyon sistemi Medipol Bilgi Eğitim Sistemi nin kısaltması olan MEBİS’dir. Öğrenciler MEBİS otomasyon sistemlerin Kullanıcı Adı ve Şifre girerek ulaşabilirler.\n"
                                          "Kullanıcı adı öğrenci numarası, şifre sistem tarafından TC kimlik numarası olarak verilmekle birlikte öğrenci dilerse sistem üzerinden değiştirebilmektedir..",
                                      style:TextStyle(fontSize: 18) ,),
                                    SizedBox(height: 7,),
                                    RichText(text: TextSpan(
                                      text: 'Mebise girmek için tıklayın\n',
                                      style: new TextStyle(color: Colors.indigo,fontSize: 18),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () { launch('https://mebis.ankaramedipol.edu.tr/');
                                        },
                                    )
                                    ),
                                    SizedBox(height:2,),
                                    RichText(text: TextSpan(
                                      text: 'MEBİS kullanım kılavuzuna ulaşmak için tıklayınız.\n',
                                      style: new TextStyle(color: Colors.indigoAccent,fontSize: 18),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () { launch('https://www.medipol.edu.tr/sites/default/files/2022-04/Mebis%20%C3%96%C4%9Frenci%20K%C4%B1lavuzu-2021%20%281%29-937875f1-ca0b-42c0-9052-748576aad31d.pdf');
                                        },
                                    )
                                    ),
                                    Divider(
                                      //Widgetlar arasında yatay ayırıcı çizgisi oluşturmak için kullanılır.
                                      thickness: 1,////Bölücü içinde çizilen çizginin kalınlığı.
                                      color: Colors.grey.shade200,
                                    ),
                                            ])
                          ))]
                ))));
  }
}*/


class Mebis extends StatefulWidget {
  Mebis({Key? key}) : super(key: key);
  @override
  _MebisState createState() => _MebisState();
}
class _MebisState extends State<Mebis> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: WebView(  //WebView mobil uygulamanızın web içeriğini görüntülemesine izin veren bir Flutter Widget'tır.
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl:'https://mebis.ankaramedipol.edu.tr', //Mebis linki.
                onWebViewCreated: (WebViewController web) {
                  _controller = web;
                })));
  }
}
