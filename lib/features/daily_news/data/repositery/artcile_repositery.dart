// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/core/constants/constants.dart';
// import 'package:news_app/core/resources/data_state.dart';
// import 'package:news_app/features/daily_news/data/data_sources/remote/news_api_service.dart';
// import 'package:news_app/features/daily_news/data/models/artcile.dart';
// import 'package:news_app/features/daily_news/domain/entites/artcile.dart';
// import 'package:news_app/features/daily_news/domain/repositres/artcile_repositery.dart';

// class ArtcileReposiyteryimpl implements ArtcleRepositery {
//   final NewsApiService _newsapiService;
//   ArtcileReposiyteryimpl(this._newsapiService);

//   @override
//   Future<DataState<List<ArtcileModel>>> getNewsArticles() async {
//     try {
//       final httpResponse = await _newsapiService.getNewsArtcicle(
//           key: newsApikey, country: newsApiCountry);
//       if (httpResponse.response == HttpStatus.ok) {
//         print(httpResponse.data);
//         return DataSucess(httpResponse.data);
//       } else {
//         return DataFailed(DioError(
//             error: httpResponse.response.statusMessage,
//             response: httpResponse.response,
//             type: DioErrorType.badResponse,
//             requestOptions: httpResponse.response.requestOptions));
//       }
//     } on DioError catch (e) {
//       return DataFailed(e);
//     }
//   }
// }
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/features/daily_news/data/models/artcile.dart';

class ArtcileReposiyteryimpl {
  Future<ArtcileModel> fetchChannelApi() async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=5dcb943db35849079bf386914ac7d072';
    final repsonse = await http.get(Uri.parse(url));
    if (repsonse.statusCode == 200) {
      final body = jsonDecode(repsonse.body);
      return ArtcileModel.fromJson(body);
    }
    throw Exception('error');
  }
}
