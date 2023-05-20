import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';


/*class TTO extends StatelessWidget {
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
                                    image: AssetImage('assets/images/logoo.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Teknoloji Transfer Ofisi',
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
                                      "Teknoloji Transfer Ofisi (TTO), akademisyen ve araştırmacıların araştırma konularına göre ulusal ve uluslararası proje desteklerini ve olanaklarını araştırmaları sırasında onlara destek veren Üniversite'deki ana birimdir.\n"
                                      "Okulumuzda TTO Anafartalar Kampüs G blok, 2.kat 203 numarlı odada bulunmaktadır.",
                                      style:TextStyle(fontSize: 18) ,),
                                    SizedBox(height: 7,),
                                    RichText(text: TextSpan(
                                      text: 'Teknoloji Transfer Ofisine girmek için tıklayın\n',
                                      style: new TextStyle(color: Colors.indigo,fontSize: 18),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () { launch('https://tto.ankaramedipol.edu.tr/');
                                        },
                                    )
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.grey.shade200,
                                    ),

    ])))]))));
  }
}*/
class TTO extends StatefulWidget {
  TTO({Key? key}) : super(key: key);

  @override
  _TTOState createState() => _TTOState();
}

class _TTOState extends State<TTO> {
  late WebViewController _controller;
  bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl: 'https://tto.ankaramedipol.edu.tr/',
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center(
            child: CircularProgressIndicator(color: Colors.blueGrey,),)
              : Stack(),
        ],
      ),
    );
  }
  }

