import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

/*void main() => runApp(MapScreen());

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medipol Map',
      theme: ThemeData(
        brightness: Brightness.light,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
      ),
      home: Map(),
    );
  }
}

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0XFFd5ae48),
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/maps.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10),
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: "Ulaşım ve\nBilgi İletişimi\n",
                            style: TextStyle(
                                fontFamily: 'Sen',
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              color: Colors.black54,
                            ),
                          ),
                          WidgetSpan(
                              child: Container(
                                height: 30,
                              )),
                      WidgetSpan(
                        child: Icon(
                            //Icons.map,
                          Icons.add_location,size: 21),
                      ),
                          TextSpan(
                            text:
                            "Ulaşım ve bilgi için tıklayınız\n",
                            style: TextStyle(fontFamily: 'Sen', fontSize: 17,color:Colors.black),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () { launch(
                                  'https://ankaramedipol.edu.tr/universite/ulasim-ve-iletisim/');
                              },
                          )
                         ],
                      ),
                    ),
                  )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

class MapScreen extends StatefulWidget {
  MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: WebView(
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: 'https://www.google.com/maps/place/Ankara+Medipol+University/@39.9357479,32.845484,15z/data=!4m6!3m5!1s0x14d34f344bac7d2b:0xe6e6907e384e6350!8m2!3d39.9357479!4d32.845484!16s%2Fg%2F11hz77j5xn',
                onWebViewCreated: (WebViewController web) {
                  _controller = web;
                })));
  }
}