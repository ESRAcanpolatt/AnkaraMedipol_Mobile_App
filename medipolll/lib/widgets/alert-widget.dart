import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:like_button/like_button.dart';
//import 'package:share_plus/share_plus.dart';

class AlertMail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Material(
          color: Colors.red.shade300,
          elevation: 4,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: EdgeInsets.all(20),
            height: 200,
            width: double.infinity,
            child: Column(children: <Widget>[
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
                    'Acil Kan İhtiyacı',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Container(
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: <Widget>[
                        Text(
                            "Okulumuzun Asel Özkan adlı öğrencisinin yakınının acil 0Rh+ kan ihtiyacı vardır +05528881612 numarasini arayarak irtibata gecebilirsiniz"),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Container(
                  child: Row(children: <Widget>[
                    Container(
                        child: Row(children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.share,
                              color: Colors.white.withOpacity(0.8),
                              size: 32,
                            ),
                            onPressed: () {
                           //Share.share('Okulumuzun Asel Özkan adlı öğrencisinin yakınının acil 0Rh+ kan ihtiyacı vardır +05528881612 numarasini arayarak irtibata gecebilirsiniz');
                              debugPrint("Paylaş");
                              splashColor:Colors.black;
                             /*Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => Paylas()));*/
                            },
                            tooltip: "Paylaş",
                          ),
                        ])),
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                        child: Row(children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.comment,
                              color: Colors.white.withOpacity(0.8),
                              size: 32,
                            ),
                           onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Comment()));
                            debugPrint("Yorum yap");
                            splashColor:
                            Colors.black;
                            },
                            tooltip: "Yorum Yap",
                          ),
                        ])),
                    Spacer(),
                   // Container(
                    //  child: Row(children: <Widget>[
                        LikeButton(
                          likeCount:120,
                          size:30,
                          circleColor:
                          CircleColor(start: Colors.white, end: Colors.red),
                          bubblesColor: BubblesColor(
                            dotPrimaryColor: Colors.red,
                            dotSecondaryColor: Colors.red,
                          ),
                        )
                        /* Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "42",
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.8)),
                        )
                      ],*/
                     /*  IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          ),
                          onPressed: () {
                            debugPrint("Beğenildi");
                            splashColor:
                            Colors.black;
                          },
                          tooltip: "Beğenildi",
                        )*/
                      ]),
                      //)
                    ),
                  ]))

          ));


  }
}
class Comment extends StatefulWidget {
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Can Oyman',
      'pic': 'https://i.pinimg.com/236x/6b/55/7e/6b557e89695ba0975f8253117c148c23.jpg',
      'message': 'Benim arkadaşımın kan grubu uygundur.',
      'date': '15.05.2023 13:41'
    },
    {
      'name': 'Seda Canpolat',
      'pic': 'https://as2.ftcdn.net/v2/jpg/01/15/16/57/1000_F_115165790_k8BhVAMsx466J80rcpYYdTXklLOHZhC9.jpg',
      'message': 'Sosyal Medya adreslerimde paylaştım.',
      'date': '15.05.2023 13:40'
    },
    {
      'name': 'Esra Canpolat',
      'pic': 'https://picsum.photos/458/354?image=996',
      'message': 'Benim kan grubum uygundur.',
      'date': '15.05.2023 12:40'
    },
    {
      'name': 'Batuhan Sarıkaya',
      'pic': 'https://img.wattpad.com/2cf7dd5d95d713c52e9510af9f315235dcdf9a71/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f555a68756e65535076335f6c46413d3d2d33342e313630383265643033386136613363343331373737373335383532332e6a7067',
      'message': 'Geçmiş olsun.',
      'date': '15.05.2023 12:00'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  print("Yorum Tıklandı");
                },
                child: Container(
                  height: 120.0,
                  width: 55.0,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing: Text(data[i]['date'], style: TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CommentBox(
          userImage: CommentBox.commentImageParser(
              imageURLorPath: "https://d.wattpad.com/story_parts/74/images/15887ec0bed4fc82983814236794.jpg"),
          child: commentChild(filedata),
          labelText: 'Bir yorum Yaz...',
          errorText: 'Yorum boş olamaz',
          withBorder: false,
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'Aden Özilhan',
                  'pic':
                  'https://d.wattpad.com/story_parts/74/images/15887ec0bed4fc82983814236794.jpg',
                  'message': commentController.text,
                  'date': '15.05.2023 15:30'
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Doğrulanmamış");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}





