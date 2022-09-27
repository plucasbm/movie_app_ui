import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/movie_model.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;
  const MovieScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ..._buildBackground(context, movie),
          buildMovieInformation(context),
          Positioned(
            bottom: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15),
                    primary: Color(0xFFFF7272),
                    fixedSize: Size(MediaQuery.of(context).size.width*0.425, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Adicionar ',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'à lista',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: (){
                    
                    
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15),
                    primary: Colors.white,
                    fixedSize: Size(MediaQuery.of(context).size.width*0.425, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyLarge,
                      children: [
                        TextSpan(
                          text: 'Ver ',
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'o trailer',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildMovieInformation(BuildContext context) {
    return Positioned(
          bottom: 150,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                movie.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '${movie.year} | ${movie.category} | ${movie.duration.inHours}h ${movie.duration.inMinutes.remainder(60)}m',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              RatingBar.builder(
                initialRating: 3.5,
                minRating: 1,
                direction: Axis.horizontal,
                ignoreGestures: true,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                unratedColor: Colors.white,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, index){
                  return const Icon(
                    Icons.star,
                    color: Colors.amber,
                  );
                }, 
                onRatingUpdate: (rating){}
              ),
              SizedBox(height: 20),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla laoreet tempus suscipit. Vestibulum sit amet auctor velit. Donec hendrerit, velit et lacinia mattis, mauris odio vulputate nisl, vel iaculis ex eros laoreet tellus. Aliquam suscipit elit a lorem molestie iaculis. Quisque turpis erat, dapibus non pellentesque eget, semper gravida nulla. Suspendisse dictum volutpat est, sit amet convallis enim sagittis sed. Pellentesque euismod magna vel lorem volutpat, vel pharetra enim scelerisque. Suspendisse non dolor fermentum metus accumsan feugiat.',
                  maxLines: 8,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    height: 1.75,
                    color: Colors.white,
                  ),
              ),
            ],
          ),
        );
  }

  List<Widget> _buildBackground(context, movie) {
    return [
        Container(
          height: double.infinity,
          padding: EdgeInsets.all(20),
          color: Color(0xFF000B49),
        ),
        Image.network(
            movie.imagePath,
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
            
          const Positioned.fill(
            child: DecoratedBox(
                decoration:
                    BoxDecoration(gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Color(0XFF000B49),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.3, 0.5],
                    ))),
          ),
    ];
  }
}
