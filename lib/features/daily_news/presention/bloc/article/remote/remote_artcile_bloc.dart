import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/features/daily_news/domain/usecase/get_artcile.dart';
import 'package:news_app/features/daily_news/presention/bloc/article/remote/remote_artcile_event.dart';
import 'package:news_app/features/daily_news/presention/bloc/article/remote/remote_artcile_state.dart';

class RemoteArtcilesBloc extends Bloc<RemoteArtcilesEvent, RemoteArtcileState> {
  final GetArtcileUseCase _artcileUseCase;
  RemoteArtcilesBloc(this._artcileUseCase)
      : super(const RemoteArtcilesLoading()) {
    on<GetArtciles>(onGetartciles);
  }

  void onGetartciles(
      GetArtciles event, Emitter<RemoteArtcileState> emit) async {
    // emit(RemoteArtcilesLoading()); // Emit the loading state first
    final datastate = await _artcileUseCase();
    if (datastate is DataSucess && datastate.data!.isNotEmpty) {
      emit(RemoteArtcilesDone(datastate.data!));
    }
    if (datastate is DataFailed) {
      print(datastate.error!.message);
      emit(RemoteArtcilesError(datastate.error!));
    }
  }
}
