import 'package:flutter/material.dart';
import 'package:messy_cinema/app.dart';
import 'package:messy_cinema/features/movies/repositories/database_repository.dart';
import 'package:messy_cinema/features/movies/repositories/mock_database.dart';

void main() {
  final DatabaseRepository repository = MockDatabase();
  runApp(App(repository: repository));
}
