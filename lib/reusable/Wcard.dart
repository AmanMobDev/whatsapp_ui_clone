import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Wcard extends StatelessWidget {

  final String name,time,imageUrl;

  Wcard(this.name,this.time,this.imageUrl);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        foregroundColor: Colors.black26,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(time),
    );
  }
}
