import 'package:messy_cinema/features/movies/models/movie_data.dart';
import 'package:messy_cinema/features/movies/repositories/database_repository.dart';
import 'package:messy_cinema/features/movies/repositories/movies_list.dart';

class MockDatabase implements DatabaseRepository {
  @override
  List<MovieData> getMovies() {
    return movieDataList;
  }
}
