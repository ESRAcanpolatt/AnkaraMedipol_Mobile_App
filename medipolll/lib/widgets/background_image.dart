import 'package:flutter/material.dart';


class BackgroundImage extends StatelessWidget {
  const BackgroundImage({ Key ? key,  }) : super(key: key);
  @override  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
       // colors: [Colors.white, Colors.blueAccent],
        colors: [Colors.black12, Colors.white24],
       begin: Alignment.topRight,
      //  end: Alignment.bottomLeft,
      ).createShader(bounds),
      blendMode: BlendMode.srcATop,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/m2.jpg'),
            fit: BoxFit.cover,
           // colorFilter: ColorFilter.mode(Colors.blueAccent, BlendMode.srcATop),
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.srcATop),
          ),
        ),
      ),
    );
  }}