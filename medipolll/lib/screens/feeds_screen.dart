import 'package:flutter/material.dart';
import 'package:medipolll/widgets/alert-widget.dart';
import 'package:medipolll/widgets/card_item.dart';
import 'package:medipolll/widgets/mail_widget.dart';


class FeedsScreen extends StatelessWidget {
  List<Widget> listItems = [
    AlertMail(),
    FeedCard(),
    MailWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return listItems[index];
        },
        itemCount: listItems.length,
      ),
    );
  }
}

