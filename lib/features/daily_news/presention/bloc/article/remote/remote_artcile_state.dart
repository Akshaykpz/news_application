import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/features/daily_news/domain/entites/artcile.dart';

abstract class RemoteArtcileState extends Equatable {
  final List<ArtcileEntity>? artclies;

  // ignore: deprecated_member_use
  final DioError? error;

  const RemoteArtcileState({this.artclies, this.error});
  @override
  List<Object> get props => [error!, artclies!];
}

class RemoteArtcilesLoading extends RemoteArtcileState {
  const RemoteArtcilesLoading();
}

class RemoteArtcilesDone extends RemoteArtcileState {
  const RemoteArtcilesDone(List<ArtcileEntity> artcile)
      : super(
          artclies: artcile,
        );
}

class RemoteArtcilesError extends RemoteArtcileState {
  const RemoteArtcilesError(DioError error) : super(error: error);
}
