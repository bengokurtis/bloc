// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:bloctest/src/models/items_model.dart';
import 'package:http/http.dart' show Client;

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'e1b7c922a5d92d582ddd0adf7a1b359c';

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client
        .get(Uri.parse("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey"));
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
