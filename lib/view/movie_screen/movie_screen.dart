import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:research_rvp/data/response/movie/movie_model.dart';
import 'package:research_rvp/view/movie_screen/movie_screen_state.dart';

import 'package:research_rvp/view/widget/header_slider.dart';
import 'package:research_rvp/view/widget/now_playing.dart';
import 'package:research_rvp/view/widget/popular.dart';
import 'package:research_rvp/view/widget/top_rate.dart';
import 'package:research_rvp/view/widget/upcoming_move_list.dart';

class MovieScreen extends ConsumerWidget {
  const MovieScreen();
  @override
  Widget build(
    context,
    watch,
  ) {
    AsyncValue<MovieModel> moviePopular = watch(getDataPopularMovie);
    AsyncValue<MovieModel> movieTrend = watch(getDataTrendMovie);
    AsyncValue<MovieModel> movieNow = watch(getDataNowPlayingMovie);
    AsyncValue<MovieModel> movieTopRate = watch(getDataTopRateMovie);
    AsyncValue<MovieModel> movieUpcoming = watch(getDataUpcomingMovie);

    return Scaffold(
      backgroundColor: Color(0xff1C262f),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              movieTrend.when(data: (data) {
                return HeaderSlider(movieTrendingModel: data);
              }, loading: () {
                return CircularProgressIndicator();
              }, error: (err, _) {
                return Text(err.toString());
              }),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  'Popular',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff9a6f)),
                  textAlign: TextAlign.start,
                ),
              ),
              moviePopular.when(data: (data) {
                return PopularWidget(
                  listMoviePopular: data,
                );
              }, loading: () {
                return CircularProgressIndicator();
              }, error: (err, _) {
                return Text(err.toString());
              }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Now Playing',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff9a6f)),
                  textAlign: TextAlign.start,
                ),
              ),
              movieNow.when(data: (data) {
                return NowPlayingWidget(
                  listResult: data,
                );
              }, loading: () {
                return CircularProgressIndicator();
              }, error: (err, _) {
                return Text(err.toString());
              }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Top Rate',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff9a6f)),
                  textAlign: TextAlign.start,
                ),
              ),
              movieTopRate.when(data: (data) {
                return TopRateMovieWidget(
                  listResult: data,
                );
              }, loading: () {
                return CircularProgressIndicator();
              }, error: (err, _) {
                return Text(err.toString());
              }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Upcoming movie list',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff9a6f)),
                  textAlign: TextAlign.start,
                ),
              ),
              movieUpcoming.when(data: (data) {
                return MovieUpcomingWidget(
                  listResult: data,
                );
              }, loading: () {
                return CircularProgressIndicator();
              }, error: (err, _) {
                return Text(err.toString());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
