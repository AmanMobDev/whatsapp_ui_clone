import 'package:flutter/material.dart';
import 'package:whatsapp_clone/reusable/Wcard.dart';
import '../Models/chatlist.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Wcard(
          "My Status",
          "Tap to add status",
          "https://images.unsplash.com/photo-1555169062-013468b47731?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
        ),
        Divider(),
        Heading("Recent Post"),
        Wcard(
          messageData[2].name,
          messageData[2].time,
          messageData[2].imageurl,
        ),
        Wcard(
          messageData[4].name,
          messageData[4].time,
          messageData[4].imageurl,
        ),
        Wcard(
          messageData[3].name,
          messageData[3].time,
          messageData[3].imageurl,
        ),
        Divider(),
        Heading("Todays"),
        Wcard(
          messageData[2].name,
          messageData[2].time,
          messageData[2].imageurl,
        ),
        Wcard(
          messageData[4].name,
          messageData[4].time,
          messageData[4].imageurl,
        ),
        Wcard(
          messageData[3].name,
          messageData[3].time,
          messageData[3].imageurl,
        ),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, top: 5.0),
        child: Text(
          heading,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),
        ),
      ),
    );
  }
}
