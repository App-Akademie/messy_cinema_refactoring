import 'package:flutter/material.dart';
import 'package:messy_cinema/features/movies/models/movie_data.dart';
import 'package:messy_cinema/features/movies/repositories/database_repository.dart';
import 'package:messy_cinema/features/movies/widgets/movie_card.dart';

class BigMovieCarousel extends StatelessWidget {
  const BigMovieCarousel({super.key, required this.repository});

  final DatabaseRepository repository;

  @override
  Widget build(BuildContext context) {
    final List<MovieData> movies = repository.getMovies();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        MovieCard(movieData: movies[0]),
        MovieCard(movieData: movies[1]),
        MovieCard(movieData: movies[2]),
        MovieCard(movieData: movies[3]),
      ]),
    );
  }
}
