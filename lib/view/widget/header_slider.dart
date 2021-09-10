import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:research_rvp/data/response/movie/movie_model.dart';

class HeaderSlider extends StatelessWidget {
  final MovieModel? movieTrendingModel;
  const HeaderSlider({Key? key, required this.movieTrendingModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return movieTrendingModel?.results == null
        ? CircularProgressIndicator()
        : CarouselSlider(
            items: movieTrendingModel?.results.map((e) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: double.infinity,
                      child: Image.network(
                          'https://image.tmdb.org/t/p/original${e.backdrop_path}'));
                },
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              height: 180,
              enlargeCenterPage: true,
            ),
          );
  }
}
