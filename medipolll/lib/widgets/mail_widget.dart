import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class MailWidget extends StatelessWidget {
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
                    'MEDİPOL MAIL',
                    style: TextStyle(fontSize: 25),
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
                child: Container(
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                          "2022-2023 Güncel Akademik Takvimine ulaşmak için aşağıdaki linke tıklayınız .Sağlıklı günlerde görüşmek dileğiyle",
                        style:TextStyle(fontSize: 17) ,),

                      RichText(text: TextSpan(
                  text: 'Akademik takvim için tıklayınız',
                 style: new TextStyle(color: Colors.indigo,fontSize: 18),
                 recognizer: new TapGestureRecognizer()
                     ..onTap = () { launch('https://ankaramedipol.edu.tr/ogrenci/akademik-takvim/');
                         },
                    )
                   ),
                      SizedBox(height:8,),
              Divider(
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "600",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.comment,
                              color: Colors.grey.withOpacity(0.8),
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
                        /*  Icon(
                            Icons.comment,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "205",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )*/
                        ],
                      ),
                    ),
                    Spacer(),
                    LikeButton(
                      likeCount:280,
                      size:30,
                      circleColor:
                      CircleColor(start: Colors.white, end: Colors.red),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.red,
                        dotSecondaryColor: Colors.red,
                      ),
                   /* Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "32",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )
                        ],
                      ),*/

                    )],
                ),
              )
            ],
          ),
        ),
    ),
    ],
          ),
    )));


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
      'name': 'Esra Canpolat',
      'pic': 'https://picsum.photos/458/354?image=996',
      'message': 'Kampüste vakit geçirmek için heyecanlanıyorum.',
      'date': '25.09.2023 16:00'
    },
    {
      'name': 'Seda Canpolat',
      'pic': 'https://as2.ftcdn.net/v2/jpg/01/15/16/57/1000_F_115165790_k8BhVAMsx466J80rcpYYdTXklLOHZhC9.jpg',
      'message': 'Yeni öğretim yılı hoşgelmiş :)',
      'date': '25.09.2023 15:40'
    },
    {
      'name': 'Berkay İşçi',
      'pic': 'https://as2.ftcdn.net/v2/jpg/03/15/98/97/1000_F_315989797_JywCY4zi8TuxCaHAhQbWq55aBkDgxsF7.jpg',
      'message': 'Şimdiden herkese eğitim öğretim hayatında başarılar.',
      'date': '24.09.2023 18:40'
    },
    {
      'name': 'Merve Çelik',
      'pic': 'https://as1.ftcdn.net/v2/jpg/04/09/99/88/1000_F_409998876_a843ByR10ckIDOoh9LEhbpYkvcff9bkZ.jpg',
      'message': 'Canım okulum .',
      'date': '24.09.2023 13:50'
    },
    {
      'name': 'Yusuf Alan',
      'pic': 'https://as1.ftcdn.net/v2/jpg/03/24/03/60/1000_F_324036075_eDLVbwxV5luP8YNzri5TrtUIDkXFAlAf.jpg',
      'message': 'Bekle bizi medipol :))',
      'date': '23.09.2023 22:10'
    },
    {
    'name': 'Nisa Bükülmez',
    'pic': 'https://as2.ftcdn.net/v2/jpg/02/55/17/29/1000_F_255172996_NXwMk1ebaG3PPgBwZaHlDQDFGcr5ttS6.jpg',
    'message': 'Eğlenceli bir okul yılı bizi bekliyorrr. ',
    'date': '22.09.2023 9:50'
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
                  'date': '25.09.2023 17:30'
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






