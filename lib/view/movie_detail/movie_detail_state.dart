import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:research_rvp/data/post/api.dart';
import 'package:research_rvp/data/post/api_impl.dart';
import 'package:research_rvp/data/response/cast_crew/cast_crew.dart';
import 'package:research_rvp/data/response/trailer/trailer.dart';

import 'package:teq_flutter_core/teq_flutter_core.dart';

ApiImpl _apiImpl = ApiImpl();

final getCaterMovie =
    StateNotifierProvider<MovieDetail, CastCrew>((ref) => MovieDetail());

class MovieDetail extends StateNotifier<CastCrew> {
  MovieDetail() : super(CastCrew());

  getCatCrew(String id) async {
    state = await _apiImpl.getCastCrewMovie(id);
    //return await _apiImpl.getCastCrewMovie(id);
  }
}

final getTrailerMovie =
    StateNotifierProvider<TrailerDetail, Trailer>((ref) => TrailerDetail());

class TrailerDetail extends StateNotifier<Trailer> {
  TrailerDetail() : super(Trailer());
  getTrailer(String id) async {
    state = await _apiImpl.getTrailerMovie(id);
  }
}
