import 'package:google_signin_example/Models/movie.dart';


  class Data {
    static final List<Movie> addedMovies = [
       Movie(
      movieName: 'Joker',
      stars: 4,
      director: 'Todd Phillips',
      imageUrl: 'assets/joker.jpg',
      rating: 9,
      genres: ['Crime', 'Drama'],
      cast: [
        Actor(name: 'Joaquin Pheonix', imageUrl: 'assets/joker.jpg'),
        Actor(name: 'Robert De Niro', imageUrl: 'assets/joker.jpg'),
        Actor(name: 'Zazie Beetz', imageUrl: 'assets/joker.jpg'),
        Actor(name: 'Frances Conroy', imageUrl: 'assets/joker.jpg')
      ],
      description:
          'Joker is a 2019 American psychological thriller film directed and produced by Todd Phillips, who co-wrote the screenplay with Scott Silver. The film, based on DC Comics characters, stars Joaquin Phoenix as the Joker and provides a possible origin story for the character. Set in 1981, it follows Arthur Fleck, a failed clown and stand-up comedian whose descent into insanity and nihilism inspires a violent counter-cultural revolution against the wealthy in a decaying Gotham City. Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Glenn Fleshler, Bill Camp, Shea Whigham, and Marc Maron appear in supporting roles. Joker was produced by Warner Bros. Pictures, DC Films, and Joint Effort, in association with Bron Creative and Village Roadshow Pictures, and distributed by Warner Bros.'),
  Movie(
      movieName: 'The Hustle',
      stars: 4,
      director: 'Chris Addison',
      imageUrl: 'assets/theHustlejpg.jpg',
      rating: 8,
      genres: ['Crime', 'Thriller'],
      cast: [
        Actor(name: 'Rebel Wilson', imageUrl: 'assets/theHustlejpg.jpg'),
        Actor(name: 'Anne Hathaway', imageUrl: 'assets/theHustlejpg.jpg'),
        Actor(name: 'Alex Sharp', imageUrl: 'assets/theHustlejpg.jpg'),
        Actor(name: 'Ingrid Oliver', imageUrl: 'assets/theHustlejpg.jpg')
      ],
      description:
          'Josephine Chesterfield is a glamorous, seductive British woman who has a penchant for defrauding gullible men out of their money. Into her well-ordered, meticulous world comes Penny Rust, a cunning and fun-loving Australian woman who lives to swindle unsuspecting marks. Despite their different methods, the two grifters soon join forces for the ultimate score -- a young and naive tech billionaire in the South of France.'),
  Movie(
      movieName: 'Good Boys',
      stars: 4,
      director: 'Gene Stupnitsky',
      imageUrl: 'assets/GoodBoys.jpg',
      rating: 7,
      genres: ['Adventure', 'Comedy'],
      cast: [
        Actor(name: 'Jacob Tremblay', imageUrl: 'assets/GoodBoys.jpg'),
        Actor(name: 'Keith L Williams', imageUrl: 'assets/GoodBoys.jpg'),
        Actor(name: 'Brady Noon', imageUrl: 'assets/GoodBoys.jpg'),
        Actor(name: 'Molly Gordon', imageUrl: 'assets/GoodBoys.jpg')
      ],
      description:
          "Invited to his first kissing party, 12-year-old Max asks his best friends Lucas and Thor for some much-needed help on how to pucker up. When they hit a dead end, Max decides to use his father's drone to spy on the teenage girls next door. When the boys lose the drone, they skip school and hatch a plan to retrieve it before Max's dad can figure out what happened."),
  Movie(
      movieName: 'Once Upon A Time in Hollywood',
      director: 'Quentin Tarantino',
      stars: 4,
      imageUrl: 'assets/OnceUponAtimeTime.jpg',
      rating: 6,
      genres: ['Comedy', 'Drama'],
      cast: [
        Actor(name: 'Brad Pitt', imageUrl: 'assassets/OnceUponAtimeTime.jpg'),
        Actor(name: 'Leonardo DiCaprio', imageUrl: 'assassets/OnceUponAtimeTime.jpg'),
        Actor(name: 'Margot Robbie', imageUrl: 'assassets/OnceUponAtimeTime.jpg'),
        Actor(name: 'Dakota Fanning', imageUrl: 'assassets/OnceUponAtimeTime.jpg')
      ],
      description:
          'Rick, a washed-out actor, and Cliff, his stunt double, struggle to recapture fame and success in 1960s Los Angeles. Meanwhile, living next door to Rick is Sharon Tate and her husband Roman Polanski.'),
  Movie(
        movieName: 'Attack On Titan',
        stars: 5,
        director: 'MAPPA Studio',
        imageUrl: 'assets/AOT.jpg',
        rating: 10,
        genres: ['Thriller', 'History'],
        cast: [
          Actor(name: 'Eren Yeager', imageUrl: 'assets/AOT.jpg'),
          Actor(name: 'Mikasa Ackerman', imageUrl: 'assets/AOT.jpg'),
          Actor(name: 'Captain Levi', imageUrl: 'assets/AOT.jpg'),
          Actor(name: 'Armin ', imageUrl: 'assets/AOT.jpg')
        ],
        description:
            'The plot of Attack on Titan centers on a civilization inside three walls, the last location where humans still live. Over one hundred years ago, humanity was driven to the brink of extinction after the emergence of humanoid giants called Titans, who attack and eat humans on sight.'),
  Movie(
        movieName: '3 Idiots',
        stars: 5,
        director: 'Rajkumar Hirani',
        imageUrl: 'assets/3Idiots.jpg',
        rating: 5,
        genres: ['Comedy', 'History'],
        cast: [
          Actor(name: 'Aamir Khan', imageUrl: 'assets/3Idiots.jpg'),
          Actor(name: 'R Madhavan', imageUrl: 'assets/3Idiots.jpg'),
          Actor(name: 'Kareena Kapoor', imageUrl: 'assets/3Idiots.jpg'),
          Actor(name: 'Boman Irani', imageUrl: 'assets/3Idiots.jpg')
        ],
        description:
            'Starring Aamir Khan, R. Madhavan, Sharman Joshi, Kareena Kapoor, Boman Irani and Omi Vaidya, the film follows the friendship of three students at an Indian engineering college and is a satire about the social pressures under an Indian education system.'),
  Movie(
        movieName: 'Demon Slayer',
        stars: 4,
        director: 'Koyoharu Gotouge',
        imageUrl: 'assets/demonSlayer.jpg',
        rating: 4,
        genres: ['Comedy', 'History'],
        cast: [
          Actor(name: 'Aamir Khan', imageUrl: 'assets/demonSlayer.jpg'),
          Actor(name: 'R Madhavan', imageUrl: 'assets/demonSlayer.jpg'),
          Actor(name: 'Kareena Kapoor', imageUrl: 'assets/demonSlayer.jpg'),
          Actor(name: 'Boman Irani', imageUrl: 'assets/demonSlayer.jpg')
        ],
        description: 
            'Demon Slayer: Kimetsu no Yaiba (鬼滅の刃, Kimetsu no Yaiba, lit. "Blade of Demon Destruction") is a Japanese manga series written and illustrated by Koyoharu Gotouge. It follows teenage Tanjiro Kamado, who strives to become a demon slayer after his family is slaughtered and his younger sister Nezuko is turned into a demon.')
   ];
}