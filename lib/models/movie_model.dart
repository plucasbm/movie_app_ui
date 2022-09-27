class Movie {
  final String name;
  final String imagePath;
  final String videoPath;
  final String category;
  final int year;
  final Duration duration;

  Movie(
      {
      required this.name,
      required this.imagePath,
      required this.videoPath,
      required this.category,
      required this.year,
      required this.duration
    });

  static List<Movie> movies = [
    Movie(
      name: 'John Wick',
      imagePath: 'https://images2.alphacoders.com/550/thumb-1920-550911.jpg',
      videoPath: 'https://www.youtube.com/watch?v=C0BMx-qxsP4',
      category: 'Ação',
      year: 2014,
      duration: Duration(hours: 1, minutes: 41),
    ),

    Movie(
      name: 'Homem de Ferro',
      imagePath: 'https://wallpaperaccess.com/full/1925947.jpg',
      videoPath: 'https://www.youtube.com/watch?v=8ugaeA-nMTc',
      category: 'Aventura',
      year: 2008,
      duration: Duration(hours: 2, minutes: 06),
    ),

    Movie(
      name: 'Capitão América 2',
      imagePath: 'https://images.alphacoders.com/496/496021.jpg',
      videoPath: 'https://www.youtube.com/watch?v=CTdvZwwShqM',
      category: 'Aventura',
      year: 2014,
      duration: Duration(hours: 2, minutes: 16),
    ),

    Movie(
      name: 'Como Se Fosse A Primeira Vez',
      imagePath: 'https://images.justwatch.com/backdrop/176306205/s640/como-se-fosse-a-primeira-vez',
      videoPath: 'https://www.youtube.com/watch?v=x6A_3Y9ML70',
      category: 'Comédia/Romance',
      year: 2004,
      duration: Duration(hours: 1, minutes: 39),
    ),

    Movie(
      name: 'Vingadores: Guerra Infinita',
      imagePath: 'https://wallpaperaccess.com/full/95489.jpg',
      videoPath: 'https://www.youtube.com/watch?v=t_ULBP6V9bg',
      category: 'Aventura',
      year: 2018,
      duration: Duration(hours: 2, minutes: 29),
    ),

    Movie(
      name: 'Vingadores: Ultimato',
      imagePath: 'https://images.hdqwalls.com/wallpapers/avengers-endgame-2019-official-poster-th.jpg',
      videoPath: 'https://www.youtube.com/watch?v=g6ng8iy-l0U',
      category: 'Aventura',
      year: 2019,
      duration: Duration(hours: 3, minutes: 02),
    ),

    Movie(
      name: 'Shrek',
      imagePath: 'https://c4.wallpaperflare.com/wallpaper/439/444/53/shrek-donkey-shrek-wallpaper-preview.jpg',
      videoPath: 'https://www.youtube.com/watch?v=CwXOrWvPBPk',
      category: 'Animação',
      year: 2001,
      duration: Duration(hours: 1, minutes: 29),
    ),
  ];
}
