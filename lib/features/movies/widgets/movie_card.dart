import 'package:flutter/material.dart';
import 'package:messy_cinema/features/movies/models/movie_data.dart';
import 'package:messy_cinema/features/movies/screens/movies_screen.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movieData,
  });

  final MovieData movieData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                movieData.imageUrl,
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
                            movieData.movieTitle,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            movieData.movieTime,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    movieData.movieDescription,
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FilledButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('Ticket zu ${movieData.movieTitle}'),
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
                              builder: (_) => const StarWarsDetailsScreen(),
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
    );
  }
}
