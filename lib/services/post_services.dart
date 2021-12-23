import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:perpus_jateng_app/api/api_db.dart';
import 'package:perpus_jateng_app/models/post_model.dart';

class PostServices extends ChangeNotifier {
  //Get data from api
  static getPost(int perPage) async {
    var result = await http
        .get(Uri.parse(ApiDb.baseUrl+'posts?per_page=${perPage.toString()}'));

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      print(data);
      List<PostModel> postModel = data.map((e) => PostModel.fromJson(e)).toList();
      return postModel;
    } else {
     return <PostModel>[];
    }
  }
}
