import 'package:flutter/material.dart';
import 'package:mymovieflix/models/movie_model.dart';
import 'package:mymovieflix/screens/home_screen.dart';
import 'package:mymovieflix/services/api_service.dart';

class PopularMovie extends StatelessWidget {
  PopularMovie({super.key});

  Future<List<MovieModel>> popularMovies = ApiService.getPoularMovies();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FutureBuilder(
            future: popularMovies,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: getPopularMovieWidget(snapshot),
                );
              }
              return const CircularProgressIndicator();
            },
          )
        ],
      ),
    );
  }

  Widget getPopularMovieWidget(AsyncSnapshot<List<MovieModel>> snapshot) {
    //여기서 listview.builder란 한번에 불러오는 것이 아니라 화면에 해당 item이 보일 때 그 파일을 불러와줌.(효울적)
    //separate와의 차이는? builder의 형태에서 나아가서 구분선이 필요할 때 사용용
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: snapshot.data!.length,
        itemBuilder: ((context, index) {
          final movie = snapshot.data![index];
          final posterUrl = 'https://image.tmdb.org/t/p/w500${movie.poster}';
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                  fullscreenDialog: true,
                ),
              );
            },
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                posterUrl,
              ),
            ),
          );
        }));
  }
}
