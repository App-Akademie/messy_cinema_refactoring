// Abstract class for the database repository, to get movies
import 'package:messy_cinema/features/movies/models/movie_data.dart';

abstract class DatabaseRepository {
  List<MovieData> getMovies();
}
