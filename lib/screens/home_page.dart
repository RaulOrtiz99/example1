import 'package:example1/cubit/post_fetch_cubit.dart';
import 'package:example1/models/post_model.dart';
import 'package:example1/screens/detail_screen.dart';
import 'package:example1/screens/postform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
floatingActionButton: FloatingActionButton.extended(
  label: Icon(Icons.add),
  onPressed: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> PostForm())

    );
  },
),
      appBar: AppBar(

        title: Text("Banco Fassil prueba"),
      ),
      body: Center(
        child: BlocBuilder<PostFetchCubit, PostFetchState>(
          builder: (context, state) {
            if (state is PostFetchLoading) {
              return const CircularProgressIndicator();
            } else if (state is PostFetchError) {
              return Text(state.failure.message);
            } else if (state is PostFetchLoaded) {
              final postList = state.postList;
              return postList.isEmpty
                  ? const Text("No any posts")
                  : ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: (context, index) {
                        final Post singlePost = postList[index];
                        return Column(
                          children: [
                             const SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Material(

                                borderRadius:const  BorderRadius.all(Radius.circular(20)),
                                elevation: 5,
                                child: ListTile(

                                  onTap: (){
                                    print(singlePost.id.toString());
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context)=> DetailScreen(singlePost: singlePost))

                                    );
                                  },
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                  leading: CircleAvatar(
                                    child: Text(singlePost.id.toString()),
                                  ),
                                  title: Text(
                                    singlePost.name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                                  ),
                                  subtitle: Text(
                                    singlePost.body,style: const TextStyle(fontSize: 15,),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(),
                          ],
                        );
                      });
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
