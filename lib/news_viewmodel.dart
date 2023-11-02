import 'package:flutter/material.dart';
import 'package:news_app/features/daily_news/data/models/artcile.dart';
import 'package:news_app/features/daily_news/data/repositery/artcile_repositery.dart';

class NewsViewModel {
  final _rep = ArtcileReposiyteryimpl();
  Future<ArtcileModel> fetchNewsChannelApi() async {
    final response = await _rep.fetchChannelApi();
    return response;
  }
}
