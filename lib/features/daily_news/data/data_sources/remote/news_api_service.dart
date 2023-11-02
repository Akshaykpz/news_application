import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:news_app/core/constants/constants.dart';
import 'package:news_app/features/daily_news/data/models/artcile.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: NewsApiUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  @GET('top-headlines')
  Future<HttpResponse<List<ArtcileModel>>> getNewsArtcicle(
      {@Query('apiKey') String? key,
      @Query('country') String? country,
      @Query('category') String? category});
}
