import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class News extends StatelessWidget {
  String header;
  String header2;
  String content;
  String imageUrl;

  News(
      {required this.header,
      required this.header2,
      required this.content,
      required this.imageUrl});

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
          height: 500,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/Gmedipol.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text(
                            header2,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.black54,),
                          ),
                        ],
                      ),
                      SizedBox(height: 12,),

                      Text(
                        header,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
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
                height: 10,
              ),
              Text(content, style: TextStyle(fontSize: 18)),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.width / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(imageUrl), fit: BoxFit.cover)),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Container(
                padding: EdgeInsets.all(10),
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
                            "100",
                            style:
                            TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )
                         /* Icon(
                            Icons.share,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "988",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )*/
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
                        ],
                      ),
                    ),
                    Spacer(),
                    LikeButton(
                      likeCount:88,
                      size:30,
                      circleColor:
                      CircleColor(start: Colors.white, end: Colors.red),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.red,
                        dotSecondaryColor: Colors.red,
                      ),
                    )
                   /* Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "61",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )
                        ],
                      ),
                    ),*/
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
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
      'message': 'Tebrikler.',
      'date': '25.10.2023 13:10'
    },
    {
      'name': 'Seda Canpolat',
      'pic': 'https://as2.ftcdn.net/v2/jpg/01/15/16/57/1000_F_115165790_k8BhVAMsx466J80rcpYYdTXklLOHZhC9.jpg',
      'message': 'Tebrik ederim.',
      'date': '25.10.2023 12:40'
    },
    {
      'name': 'Furkan Turunç',
      'pic': 'https://as1.ftcdn.net/v2/jpg/02/37/59/12/1000_F_237591270_lsWhTybiU0N3FrBOmrEsVsDggWmAMCey.jpg',
      'message': ' Başarılarınızı kutluyorum.',
      'date': '24.10.2023 9:50'
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
                  'date': '25.10.2023 17:30'
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






