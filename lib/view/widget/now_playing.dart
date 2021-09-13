import 'package:flutter/material.dart';

import 'package:research_rvp/data/response/movie/movie_model.dart';
import 'package:research_rvp/view/movie_detail/movie_detail_screen.dart';

class NowPlayingWidget extends StatelessWidget {
  final MovieModel? listResult;
  NowPlayingWidget({
    required this.listResult,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listResult?.results == null
        ? CircularProgressIndicator()
        : Container(
            height: 230,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listResult?.results.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailScreen(
                                    urlBackdrop: listResult!
                                        .results[index].backdrop_path,
                                    urlPoster:
                                        listResult!.results[index].poster_path,
                                    title: listResult!.results[index].title,
                                    releaseDate:
                                        listResult!.results[index].release_date,
                                    voteAverage:
                                        listResult!.results[index].vote_average,
                                    voteCount:
                                        listResult!.results[index].vote_count,
                                    overView:
                                        listResult!.results[index].overview,
                                    id: listResult!.results[index].id,
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
                                'https://image.tmdb.org/t/p/original${listResult!.results[index].poster_path ?? ''}',
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
                            height: 30,
                            child: Text(
                              '${listResult!.results[index].title}',
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
          );
  }
}
