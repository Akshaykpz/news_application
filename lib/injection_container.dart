import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/features/daily_news/data/data_sources/remote/news_api_service.dart';

import 'package:news_app/features/daily_news/domain/usecase/get_artcile.dart';
import 'package:news_app/features/daily_news/presention/bloc/article/remote/remote_artcile_bloc.dart';

// final s1 = GetIt.instance;
// Future<void> injectionDepenctiecy() async {
//   s1.registerSingleton<Dio>(Dio());
//   s1.registerSingleton<NewsApiService>(NewsApiService(s1()));

//   s1.registerSingleton<GetArtcileUseCase>(GetArtcileUseCase(s1()));
//   s1.registerFactory<RemoteArtcilesBloc>(() => RemoteArtcilesBloc(s1()));
// }
