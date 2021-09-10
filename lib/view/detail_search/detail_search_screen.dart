import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:research_rvp/data/post/api.dart';
import 'package:research_rvp/view/detail_search/detail_search_bloc.dart';
import 'package:research_rvp/view/detail_search/detail_search_event.dart';
import 'package:research_rvp/view/detail_search/detail_search_state.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class SearchScreenFilter extends StatefulWidget {
  final String keySearch;
  SearchScreenFilter({Key? key, required this.keySearch}) : super(key: key);

  @override
  _SearchScreenFilterState createState() => _SearchScreenFilterState();
}

class _SearchScreenFilterState extends BaseBlocState<SearchScreenFilter> {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
      providers: [BlocProvider(create: (context) => bloc as SearchBlocFilter)],
      child: BaseBlocBuilder<SearchStateFilter>(
          bloc as SearchBlocFilter, _buildBody));

  @override
  BaseBloc createBloc() => SearchBlocFilter(context.read<Api>())
    ..add(SearchEventFilter(search: widget.keySearch));

  Widget _buildBody(BuildContext context, SearchStateFilter state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.keySearch.toUpperCase()),
      ),
      body: Container(
        width: double.infinity,
        child: !(!state.isLoading && state.searchMultiModel != null)
            ? Center(
                child: !state.isLoading
                    ? Container()
                    : CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: state.searchMultiModel?.results?.length,
                itemBuilder: (context, index) {
                  String posterDefaul =
                      'https://www.mayacinemas.com/themes/web/images/default-movie.png';
                  String? poster =
                      state.searchMultiModel?.results![index].poster_path;
                  String posterUI =
                      'https://image.tmdb.org/t/p/original$poster';
                  String profileDefaul =
                      'https://st.quantrimang.com/photos/image/2017/04/08/anh-dai-dien-FB-200.jpg';
                  String? profile =
                      state.searchMultiModel?.results![index].profile_path;
                  String profileUI =
                      'https://image.tmdb.org/t/p/original$profile';
                  if (state.searchMultiModel?.results![index].media_type ==
                          'movie' ||
                      state.searchMultiModel?.results![index].media_type ==
                          'tv') {
                    var movieortv = state.searchMultiModel?.results![index];
                    return Container(
                      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      height: 210,
                      width: double.infinity,
                      child: Container(
                        width: 400,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(15),
                          )),
                          shadowColor: Colors.blueGrey,
                          elevation: 10,
                          child: Row(
                            children: [
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(70),
                                    topLeft: Radius.circular(30),
                                  ),
                                  child: Image.network(
                                    poster == null ? posterDefaul : posterUI,
                                    width: 130,
                                    height: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 160,
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      movieortv!.name ?? movieortv.title ?? '',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Date: ',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        Text(
                                          movieortv.release_date ?? '',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        RatingBarIndicator(
                                          rating: movieortv.vote_average! / 2,
                                          direction: Axis.horizontal,
                                          itemCount: 5,
                                          itemSize: 14,
                                          unratedColor: Colors.grey,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                        ),
                                        Text(
                                          '${movieortv.vote_average}',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '   ${movieortv.overview}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Positioned(
                      //   left: 20,
                      //   child: Container(
                      //     width: 100,
                      //     height: 150,
                      //     child: ClipRRect(
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(10),
                      //       ),
                      //       child: Image.network(
                      //         poster == null ? posterDefaul : posterUI,
                      //         fit: BoxFit.fill,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    );
                  }
                  var person = state.searchMultiModel?.results![index];
                  return Container(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    height: 210,
                    width: double.infinity,
                    child: Container(
                      width: 400,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(15),
                        )),
                        shadowColor: Colors.blueGrey,
                        elevation: 10,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(70),
                                  topLeft: Radius.circular(30),
                                ),
                                child: Image.network(
                                  profile == null ? profileDefaul : profileUI,
                                  width: 130,
                                  height: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 190,
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    person!.name ?? '',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Popularity: ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                      Text(
                                        '${person.popularity}',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Known for Department:',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                  Text(
                                    '${person.known_for_department}',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 5, right: 5),
                                width: 10,
                                height: 10,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                  //       Positioned(
                  //         left: 20,
                  //         child: Container(
                  //           width: 100,
                  //           height: 150,
                  //           child: ClipRRect(
                  //             borderRadius: BorderRadius.all(
                  //               Radius.circular(10),
                  //             ),
                  //             child: Image.network(
                  //               profile == null ? profileDefaul : profileUI,
                  //               fit: BoxFit.fill,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Positioned(
                  //         right: 50,
                  //         top: 60,
                  //         child: Container(
                  //             width: 10,
                  //             height: 10,
                  //             child: Icon(
                  //               Icons.person,
                  //               color: Colors.grey,
                  //             )),
                  //       ),

                  // );
                },
              ),
      ),
    );
  }
}
