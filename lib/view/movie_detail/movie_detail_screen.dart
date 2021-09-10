import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:research_rvp/data/response/cast_crew/cast_crew.dart';
import 'package:research_rvp/data/response/trailer/trailer.dart';
import 'package:research_rvp/view/backdrop/backdrop_screen.dart';
import 'package:research_rvp/view/caster_detail/caster_screen.dart';
import 'package:research_rvp/view/movie_detail/movie_detail_state.dart';
import 'package:research_rvp/view/poster_detail/poster_screen.dart';
import 'package:research_rvp/view/trailer_detail/trailer_detail_screen.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class DetailScreen extends StatefulWidget {
  final String? urlBackdrop;
  final String? urlPoster;
  final String? title;
  final String? releaseDate;
  final double? voteAverage;
  final int? voteCount;
  final String? overView;
  final int id;
  DetailScreen(
      {Key? key,
      required this.id,
      this.urlBackdrop,
      this.urlPoster,
      this.title,
      this.releaseDate,
      this.voteAverage,
      this.voteCount,
      this.overView})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    context.read(getTrailerMovie.notifier).getTrailer(widget.id.toString());
    context.read(getCaterMovie.notifier).getCatCrew(widget.id.toString());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C262f),
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 230,
              backgroundColor: Colors.transparent,
              collapsedHeight: 110,
              floating: false,
              pinned: true,
              flexibleSpace: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      transferToNewScreen(
                        context,
                        BackdropScreen(
                          title: widget.title ?? '',
                          id: widget.id.toString(),
                        ),
                      );
                    },
                    child: Image.network(
                      'https://image.tmdb.org/t/p/original${widget.urlBackdrop}??'
                      '',
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 250,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    left: 10,
                    child: Container(
                      height: 130,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () async {
                              // BlocProvider.of<GetPosterBloc>(context).add(
                              //     GetPosterEventStart(
                              //         movieId: id.toString()));
                              transferToNewScreen(
                                context,
                                PosterScreen(
                                  title: widget.title ?? '',
                                  id: widget.id.toString(),
                                ),
                              );
                            },
                            child: Image.network(
                              'https://image.tmdb.org/t/p/original${widget.urlPoster}',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 90,
                                child: Text(
                                  '${widget.title}',
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Color(0xffff9a6f),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Text('${widget.releaseDate}',
                                  style: TextStyle(color: Color(0xffff9a6f))),
                            ],
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: RatingBarIndicator(
                                  rating: widget.voteAverage! / 2,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemSize: 20,
                                  unratedColor: Colors.grey,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                              Text(
                                '${widget.voteCount}',
                                style: TextStyle(
                                  color: Color(0xffff9a6f),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, left: 5),
                            child: Text(
                              '${widget.voteAverage}',
                              style: TextStyle(
                                  color: Color(0xffff9a6f),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            child: Consumer(builder: (context, watch, _) {
              CastCrew? data = watch(getCaterMovie);
              Trailer? dataTrailer = watch(getTrailerMovie);

              if (data == null) {
                return CircularProgressIndicator();
              }
              return Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffff9a6f),
                      ),
                    ),
                    Text('     ${widget.overView}',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white.withOpacity(0.7),
                          fontStyle: FontStyle.italic,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Cast',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffff9a6f),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 15,
                      ),
                      height: 100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data!.cast!.length,
                          itemBuilder: (context, index) {
                            String imageDefault =
                                'https://st.quantrimang.com/photos/image/2017/04/08/anh-dai-dien-FB-200.jpg';
                            String? avatarCaster =
                                data.cast![index].profile_path;
                            String? avatarLink =
                                'https://image.tmdb.org/t/p/original$avatarCaster';
                            return InkWell(
                              onTap: () {
                                // BlocProvider.of<CasterBloc>(context).add(
                                //     CasterClickEvent(state
                                //         .castCrew!.cast![index].id
                                //         .toString()));
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => CasterScreen(
                                              id: data.cast![index].id
                                                  .toString(),
                                            )));
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              avatarCaster == null
                                                  ? imageDefault
                                                  : avatarLink),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${data.cast![index].name}',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.7)),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Crew',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffff9a6f),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 15,
                        ),
                        height: 100,
                        width: double.infinity,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: data.crew!.length,
                            itemBuilder: (context, index) {
                              String imageDefault =
                                  'https://st.quantrimang.com/photos/image/2017/04/08/anh-dai-dien-FB-200.jpg';
                              String? avatarCrew =
                                  data.crew![index].profile_path;
                              String? avatarLink =
                                  'https://image.tmdb.org/t/p/original$avatarCrew';
                              return Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(avatarCrew == null
                                              ? imageDefault
                                              : avatarLink),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${data.crew![index].name}',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.7)),
                                    )
                                  ],
                                ),
                              );
                            })),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Trailer',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffff9a6f),
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 130,
                    //   child: dataTrailer!.results == null
                    //       ? Text('nodta')
                    //       : ListView.builder(
                    //           scrollDirection: Axis.horizontal,
                    //           itemCount: dataTrailer.results!.length,
                    //           itemBuilder: (context, index) {
                    //             var trailer = dataTrailer.results;
                    //             var avatarTrailerAPI =
                    //                 dataTrailer.results![index].key;
                    //             var avatarTrailerDefaul =
                    //                 'https://img.youtube.com/vi/0.jpg';
                    //             var avatarLink =
                    //                 'https://img.youtube.com/vi/$avatarTrailerAPI/0.jpg';

                    //             return Padding(
                    //               padding: const EdgeInsets.only(right: 10),
                    //               child: InkWell(
                    //                 onTap: () {
                    //                   Navigator.push(
                    //                       context,
                    //                       MaterialPageRoute(
                    //                           builder: (_) =>
                    //                               TrailerDetailSCreen(
                    //                                 keyYoutube: dataTrailer
                    //                                     .results![index].key,
                    //                                 title: widget.title ?? '',
                    //                               )));
                    //                 },
                    //                 child: Stack(
                    //                   alignment: Alignment.bottomCenter,
                    //                   children: [
                    //                     Image.network(
                    //                       avatarTrailerAPI == null
                    //                           ? avatarTrailerDefaul
                    //                           : avatarLink,
                    //                       fit: BoxFit.fill,
                    //                     ),
                    //                     Container(
                    //                       width: 160,
                    //                       child: Text(
                    //                         trailer?[index].name ?? '',
                    //                         style:
                    //                             TextStyle(color: Colors.white),
                    //                         overflow: TextOverflow.ellipsis,
                    //                       ),
                    //                     ),
                    //                     Padding(
                    //                       padding:
                    //                           const EdgeInsets.only(bottom: 40),
                    //                       child: Icon(
                    //                         Icons.play_arrow,
                    //                         color: Colors.grey,
                    //                         size: 50,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //             );
                    //           },
                    //         ),
                    // ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
