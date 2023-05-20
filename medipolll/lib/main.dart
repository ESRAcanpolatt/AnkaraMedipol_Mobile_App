import 'package:flutter/material.dart';
import 'package:medipolll/screens/intro_page.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyApp()));}
class MyApp extends StatefulWidget {
  const MyApp({key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyScaleTransition(appBarTitle: "ANKARA MEDİPOL ÜNİVERSİTESİ")));});}
  @override
  Widget build(BuildContext context) {
    //return SafeArea(
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blueAccent, Colors.white]),),
          child: const Center(
            child: Text('ANKARA MEDİPOL ÜNİVERSİTESİ',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blueGrey,
                  fontFamily: 'Raleway',
                )),
          ),
        ));
  }
}

 class MyScaleTransition extends StatefulWidget {
  final String appBarTitle;

  const MyScaleTransition({Key ?key, required this.appBarTitle}) : super(key: key);

  @override
  _MyScaleTransitionState createState() => _MyScaleTransitionState();
  }

  class _MyScaleTransitionState extends State<MyScaleTransition> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<double> _animation;

  @override
  void initState() {
  super.initState();
  _animationController = AnimationController(duration: Duration(seconds: 2), vsync: this)..repeat(reverse: true);
  _animation = CurvedAnimation(curve: Curves.fastOutSlowIn, parent: _animationController);
  }
  @override
  void dispose() {
  _animationController.dispose();
  super.dispose();

  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.blueGrey,
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      centerTitle: true,
      title: Text(
        widget.appBarTitle.toUpperCase(),
        style: TextStyle(color: Colors.white, letterSpacing: 1, fontSize: 20, fontWeight: FontWeight.w400),
      ),
    ),
    body: Center(
      child:OutlinedButton(
        style:  OutlinedButton.styleFrom(
          primary: Colors.white.withOpacity(0.1),
          backgroundColor: Colors.blueGrey,
          shape: CircleBorder(),
         padding: EdgeInsets.all(10),
          side: BorderSide(color: Colors.blueGrey,),
        ),
        onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));},
        child:ScaleTransition(
          scale: _animation,
          child:SizedBox(height: 300,width: 250,
          child:Image.asset(
              "assets/images/medipol_logo.png",
          )),
      )
      ),
    ),
 );
  }
}
