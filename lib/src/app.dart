import 'package:bloctest/src/ui/movie_list.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BloC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
        home: const Scaffold(
          body:  MovieList(),),
    );
  }
}