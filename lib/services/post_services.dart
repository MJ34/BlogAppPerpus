import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:perpus_jateng_app/api/api_db.dart';
import 'package:perpus_jateng_app/models/post_model.dart';

class PostServices extends ChangeNotifier {
  //Get data from api Slider
  static getPost(int perPage) async {
    var result = await http
        .get(Uri.parse(ApiDb.baseUrl+'posts?per_page=${perPage.toString()}'));

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<PostModel> postModel = data.map((e) => PostModel.fromJson(e)).toList();
      return postModel;
    } else {
     return <PostModel>[];
    }
  }

  //Get data from api post by idCategory dan perPage
  static getPostByIdCategory({int idCategory = 0, int perPage = 10}) async {
    var result = await http
        .get(Uri.parse(ApiDb.baseUrl+'posts?categories=${idCategory.toString()}&per_page=${perPage.toString()}'));

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<PostModel> postModel = data.map((e) => PostModel.fromJson(e)).toList();
      return postModel;
    } else {
      return <PostModel>[];
    }
  }
}
