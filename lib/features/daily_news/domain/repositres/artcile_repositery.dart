import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/domain/entites/artcile.dart';

abstract class ArtcleRepositery {
  Future<DataState<List<ArtcileEntity>>> getNewsArticles();
}
