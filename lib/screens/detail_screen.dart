import 'package:flutter/material.dart';

import '../models/post_model.dart';

class DetailScreen extends StatelessWidget {
  final Post singlePost;
  const DetailScreen({Key? key, required this.singlePost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          elevation: 5,
          child: ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            title: Text(

              singlePost.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),

            ),
            subtitle: Text(
              singlePost.body, style: TextStyle(fontSize: 15,),
            ),
          ),
        ),
      ),
    );
  }
}
