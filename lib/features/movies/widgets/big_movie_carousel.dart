import 'package:flutter/material.dart';
import 'package:messy_cinema/features/movies/models/movie_data.dart';
import 'package:messy_cinema/features/movies/screens/movies_screen.dart';
import 'package:messy_cinema/features/movies/widgets/movie_card.dart';

class BigMovieCarousel extends StatelessWidget {
  BigMovieCarousel({super.key});

  List<MovieData> movies = [
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
  ];

  // final MovieData startWarsMovieData = MovieData(
  //   imageUrl:
  //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFKJCBk8oZmcBxsggKRhslIg6Pp2qsE9Pmmg&usqp=CAU',
  //   movieTitle: 'Star Wars',
  //   movieTime: '20:15 - 23:05',
  //   movieDescription:
  //       "Star Wars ist ein amerikanisches Epos-Space-Opera-Medien-Franchise, das von George Lucas erstellt wurde und mit dem gleichnamigen Film von 1977 begann und schnell zu einem weltweiten Popkultur-Phänomen wurde.",
  // );

  // final MovieData lotrMovieData = MovieData(
  //   imageUrl:
  //       'https://de.web.img3.acsta.net/r_654_368/img/95/3b/953bf396a9308be856e10b7075d2c570.jpg',
  //   movieTitle: 'Herr der Ringe',
  //   movieTime: '18:00 - 21:13',
  //   movieDescription:
  //       "Herr der Ringe ist ein Film, der auf dem gleichnamigen Buch von J.R.R. Tolkien basiert. Der Film wurde von Peter Jackson inszeniert. Der Film wurde in Neuseeland gedreht.",
  // );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        //         final String imageUrl =
        //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFKJCBk8oZmcBxsggKRhslIg6Pp2qsE9Pmmg&usqp=CAU';
        // final String movieTitle = 'Star Wars';
        // final String movieTime = '20:15 - 23:05';
        // final String movieDescription =
        //     "Star Wars ist ein amerikanisches Epos-Space-Opera-Medien-Franchise, das von George Lucas erstellt wurde und mit dem gleichnamigen Film von 1977 begann und schnell zu einem weltweiten Popkultur-Phänomen wurde.";

        MovieCard(movieData: movies[0]),
        MovieCard(movieData: movies[1]),
        MovieCard(movieData: movies[2]),

        SizedBox(
          height: 450,
          width: 350,
          child: Card(
            elevation: 8.0,
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'https://cdn.prod.www.spiegel.de/images/79703aee-0001-0004-0000-000000776367_w960_r1.778_fpx42_fpy45.jpg',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.movie, size: 40.0),
                          const SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hunger Games',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                '17:45 - 21:55',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        "Hunger Games ist ein dystopischer Roman von Suzanne Collins. Es ist der erste Roman der Hungerspiele-Trilogie und wurde 2008 veröffentlicht. Der Roman wurde von Collins und Billy Ray für den Film adaptiert.",
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FilledButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Ticket zu Hunger Games'),
                                ),
                              );
                            },
                            child: const Text('Ticket kaufen'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) =>
                                      const HungerGamesDetailsScreen(),
                                ),
                              );
                            },
                            child: const Text('Vorschau'),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
