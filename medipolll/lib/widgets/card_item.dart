import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class FeedCard extends StatelessWidget {
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
          height: 450,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        image: DecorationImage(
                            image: AssetImage('assets/images/futbol.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'MEDİPOL FUTBOL KULÜP',
                    style: TextStyle(fontSize: 22),
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
              Text(
                  "Eğer siz de ailemizin bir parçası olmak istiyorsanız tanışma toplantımıza bekliyoruz. "
                  "Yer: Sağlık Kültür ve Spor Dairesi Başkanlığı"),
              Expanded(
                child:Scrollbar(
                  thickness: 4,
                  radius: Radius.circular(20),
                  isAlwaysShown: true,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.width / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage("assets/images/futbol4.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.width / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage("assets/images/futbol2.jpg"),
                              fit: BoxFit.cover)),
                    ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.width / 2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage("assets/images/basari.webp"),
                                fit: BoxFit.cover)),
                    ),
                  ],
                ),
              )),
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
                            "900",
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
                        ])),
                       /*   Icon(
                            Icons.comment,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "300",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.8)),
                          )
                        ],
                      ),*/

                    Spacer(),
                  LikeButton(
                  likeCount:180,
                  size:30,
                  circleColor:
                  CircleColor(start: Colors.white, end: Colors.red),
                  bubblesColor: BubblesColor(
                  dotPrimaryColor: Colors.red,
                  dotSecondaryColor: Colors.red,
                 )),

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
      'name': 'Taha Şekerci',
      'pic': 'https://as1.ftcdn.net/v2/jpg/04/28/23/04/1000_F_428230445_DeRzix3yVFyZBrf5GiHgXW0O0gargoYk.jpg',
      'message': 'Başarılarınızın devamını diliyorum.',
      'date': '16.05.2023 18:00'
    },
    {
      'name': 'Ufuk Çömen',
      'pic': 'https://as2.ftcdn.net/v2/jpg/04/00/52/99/1000_F_400529924_Egv5sjbbOEVGWrBvweh8N3Md4HWd9IlD.jpg',
      'message': 'Herkesi sağlık kültür ve spor dairesi başkanlığımıza bekliyoruz.',
      'date': '16.05.2023 17:40'
    },
    {
      'name': 'Berke Hüsmen',
      'pic': 'https://www.eniyisor.com/wp-content/uploads/2022/10/yakisikli-erkek-fotograflari-9-770x1024.png',
      'message': 'Kazanacağınızı biliyorduk..',
      'date': '15.05.2023 14:45'
    },
    {
      'name': 'Berk Yıldız',
      'pic': 'https://as1.ftcdn.net/v2/jpg/01/17/14/00/1000_F_117140062_xlNFWpXuvOcRww2AEB7WZH3kUrNYLBY9.jpg',
      'message': 'Bu ailenin bir parçası olmaktan gurur duyuyorum :)',
      'date': '15.05.2023 14:38'
    },
    {
      'name': 'Erçetin Topal',
      'pic': 'https://i.pinimg.com/736x/89/bc/29/89bc29d417ce42ddca0174c5e4fee81e.jpg',
      'message': 'Bravo :))',
      'date': '15.05.2023 13:50'
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
                  'date': '17.05.2023 9:30'
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








