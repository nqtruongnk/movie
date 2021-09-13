import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:research_rvp/data/response/movie/movie_model.dart';
import 'package:research_rvp/view/movie_detail/movie_detail_state.dart';
import 'package:research_rvp/view/movie_detail/movie_detail_screen.dart';

class PopularWidget extends ConsumerWidget {
  final MovieModel? listMoviePopular;
  PopularWidget({
    this.listMoviePopular,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return listMoviePopular?.results == null
        ? CircularProgressIndicator()
        : Container(
            height: 230,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listMoviePopular?.results.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailScreen(
                                      urlBackdrop: listMoviePopular!
                                          .results[index].backdrop_path,
                                      urlPoster: listMoviePopular!
                                          .results[index].poster_path,
                                      title: listMoviePopular!
                                          .results[index].title,
                                      releaseDate: listMoviePopular!
                                          .results[index].release_date,
                                      voteAverage: listMoviePopular!
                                          .results[index].vote_average,
                                      voteCount: listMoviePopular!
                                          .results[index].vote_count,
                                      overView: listMoviePopular!
                                          .results[index].overview,
                                      id: listMoviePopular!.results[index].id,
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 0.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://image.tmdb.org/t/p/original${listMoviePopular!.results[index].poster_path ?? ''}',
                                  fit: BoxFit.fill,
                                  height: 160,
                                  width: 130,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              width: 130,
                              child: Text(
                                '${listMoviePopular!.results[index].title}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          );
  }
}
