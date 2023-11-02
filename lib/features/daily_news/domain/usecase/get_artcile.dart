import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/core/usecase/usecase.dart';
import 'package:news_app/features/daily_news/domain/entites/artcile.dart';
import 'package:news_app/features/daily_news/domain/repositres/artcile_repositery.dart';

class GetArtcileUseCase
    implements Usecase<DataState<List<ArtcileEntity>>, void> {
  final ArtcleRepositery _artcleRepositery;
  GetArtcileUseCase(this._artcleRepositery);
  @override
  Future<DataState<List<ArtcileEntity>>> call({void params}) {
    // TODO: implement call
    return _artcleRepositery.getNewsArticles();
  }
}
