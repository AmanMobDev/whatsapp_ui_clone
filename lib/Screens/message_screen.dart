import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:whatsapp_clone/Models/chatlist.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              child: CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(
                  messageData[1].imageurl,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    messageData[2].name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                  ),
                  Text(
                    "online",
                    style: TextStyle(color: Colors.grey, fontSize: 13.0),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 5.0,
                  right: 5.0,
                ),
              ),
              Icon(
                Icons.video_call_rounded,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.0,
                  right: 5.0,
                ),
              ),
              Icon(
                Icons.call,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.0,
                  right: 5.0,
                ),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.0,
                  right: 5.0,
                ),
              ),
            ],
          )
        ],
        titleSpacing: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Positioned(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: TextFormField(
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      labelText: 'message',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconButton(icon: Icon(Icons.send), onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
