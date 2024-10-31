import 'package:flutter/material.dart';
import 'package:messy_cinema/features/movies/models/movie_data.dart';
import 'package:messy_cinema/features/movies/widgets/movie_card.dart';

class BigMovieCarousel extends StatelessWidget {
  BigMovieCarousel({super.key});

  final List<MovieData> movies = [
    MovieData(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFKJCBk8oZmcBxsggKRhslIg6Pp2qsE9Pmmg&usqp=CAU',
      movieTitle: 'Star Wars',
      movieTime: '20:15 - 23:05',
      movieDescription:
          "Star Wars ist ein amerikanisches Epos-Space-Opera-Medien-Franchise, das von George Lucas erstellt wurde und mit dem gleichnamigen Film von 1977 begann und schnell zu einem weltweiten Popkultur-Phänomen wurde.",
    ),
    MovieData(
      imageUrl:
          'https://de.web.img3.acsta.net/r_654_368/img/95/3b/953bf396a9308be856e10b7075d2c570.jpg',
      movieTitle: 'Herr der Ringe',
      movieTime: '18:00 - 21:13',
      movieDescription:
          "Herr der Ringe ist ein Film, der auf dem gleichnamigen Buch von J.R.R. Tolkien basiert. Der Film wurde von Peter Jackson inszeniert. Der Film wurde in Neuseeland gedreht.",
    ),
    MovieData(
      imageUrl:
          'https://images.cgames.de/images/gsgp/290/harry-potter-filme_6229276.jpg',
      movieTitle: 'Harry Potter',
      movieTime: '10:00 - 12:30',
      movieDescription:
          "Harry Potter ist eine Fantasy-Romanreihe der britischen Schriftstellerin Joanne K. Rowling. Erzählt wird die Geschichte des jungen Zauberers Harry Potter, der als Baby von der bösen Hexe Lord Voldemort ermordet werden sollte, aber überlebte und seither gegen ihn kämpft.",
    ),
    MovieData(
      imageUrl:
          'https://cdn.prod.www.spiegel.de/images/79703aee-0001-0004-0000-000000776367_w960_r1.778_fpx42_fpy45.jpg',
      movieTitle: 'Hunger Games',
      movieTime: '17:45 - 21:55',
      movieDescription:
          "Hunger Games ist ein dystopischer Roman von Suzanne Collins. Es ist der erste Roman der Hungerspiele-Trilogie und wurde 2008 veröffentlicht. Der Roman wurde von Collins und Billy Ray für den Film adaptiert.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
