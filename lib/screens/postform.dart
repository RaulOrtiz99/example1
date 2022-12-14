import 'package:flutter/material.dart';

class PostForm extends StatelessWidget {
  const PostForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Post form"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
          Center(
            child: Text(
              "LAS VALIDACIONES DEL FORMULARIO NO ME DIO TIEMPO DE HACERLAS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text(
              "Perdon  :(",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
