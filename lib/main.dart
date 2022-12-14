import 'package:example1/cubit/post_fetch_cubit.dart';
import 'package:example1/repository/api_repository.dart';
import 'package:example1/service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MyApp(
    apiService: ApiService(),
  ));
}

class MyApp extends StatelessWidget {
  final ApiService apiService;
  const MyApp({super.key, required this.apiService});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostFetchCubit>(
          create: (context) => PostFetchCubit(
            apiRepository: ApiRepository(
              apiService: apiService,
            ),
          )..fetchPostApi(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fassil app prueba tecnica',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  const HomePage()),
    );
  }
}
