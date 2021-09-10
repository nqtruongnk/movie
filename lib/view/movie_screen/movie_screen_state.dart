import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:research_rvp/data/post/api_impl.dart';
import 'package:research_rvp/data/response/movie/movie_model.dart';

ApiImpl apiImpl = ApiImpl();
final getDataTrendMovie = FutureProvider<MovieModel>((ref) async {
  return apiImpl.getListMovieTrending();
});
final getDataPopularMovie = FutureProvider<MovieModel>((ref) async {
  return apiImpl.getListMovieFopular();
});
final getDataNowPlayingMovie = FutureProvider<MovieModel>((ref) async {
  return apiImpl.getListMoviePlaying();
});

final getDataTopRateMovie = FutureProvider<MovieModel>((ref) async {
  return apiImpl.getListMovieTopRate();
});

final getDataUpcomingMovie = FutureProvider<MovieModel>((ref) async {
  return apiImpl.getListMovieUpcoming();
});
