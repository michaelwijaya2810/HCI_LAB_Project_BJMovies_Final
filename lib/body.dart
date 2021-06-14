import 'package:bj_movies/custom_carousel.dart';
import 'package:bj_movies/movie_button.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        CustomCarousel(
          items: [
            './assets/doraemon.jpeg',
            './assets/spiderman.jpeg',
            './assets/angelhasfallen.jpeg',
            './assets/mib.jpeg',
            './assets/friend_zone.jpeg',
            './assets/parasite.jpeg',
          ],
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'New Movies',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/angelhasfallen.jpeg',
                  movieTitle: 'Angel Has Fallen',
                  movieCat: 'Action, Thriller',
                  synopsis:
                      'After the events in the previous film, Secret Service agent Mike Banning finds himself framed for an assassination attempt on the President. Pursued by his own agency and the FBI, Banning races to clear his name and uncover the real terrorist threat which has set its sights on Air Force One.',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                MovieButton(
                  imageLoc: './assets/mib.jpeg',
                  movieTitle: 'Men In Black: International',
                  movieCat: 'Action, Adventure, Comedy',
                  synopsis:
                      'After an eye-opening encounter of the third kind, the secret MiB organisation\'s newest recruit, Agent M, finds herself under the wing of the heroic Agent H in cosmopolitan London, when a shape-shifting duo of intergalactic assassins executes an alien aristocrat. Now, with a devastating super-weapon of mass destruction hidden somewhere on Earth, the Men in Black will leave no stone unturned to retrieve it. However, heavy clouds of mistrust and a scent of betrayal envelop the once-incorruptible agency. Is there a well-placed mole in their midst?',
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/friend_zone.jpeg',
                  movieTitle: 'Friend Zone',
                  movieCat: 'Comedy, Romance',
                  synopsis:
                      'In this world, there are many people who seem to be wandering along a relationship on the border of friends and lovers. This borderline is also commonly known as the friend zone and then two friends start to have romantic feelings for each other.',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                MovieButton(
                  imageLoc: './assets/doraemon.jpeg',
                  movieTitle:
                      'Doraemon: Nobita\'s Chronicle of the Moon Exploration',
                  movieCat: 'Sci-Fi, Anime',
                  synopsis:
                      'Nobita saw a moon turned yellow last night and told his class about it but they think it\'s funny. Doraemon gives him the "History Explorers Club Badge" and discovers there\'s life on the moon. Until a new student changed him forever.',
                ),
              ],
            ),
          ],
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Most Popular',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/avenger_edited.jpeg',
                  movieTitle: 'Avengers: Endgame',
                  movieCat: 'Action, Adventure, Drama',
                  synopsis:
                      'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos\'s actions and undo the chaos to the universe, no matter what consequences may be in store, and no matter who they face...',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                MovieButton(
                  imageLoc: './assets/parasite.jpeg',
                  movieTitle: 'Parasite',
                  movieCat: 'Comedy, Drama, Thriller',
                  synopsis:
                      'Jobless, penniless, and, above all, hopeless, the unmotivated patriarch, Ki-taek, and his equally unambitious family--his supportive wife, Chung-sook; his cynical twentysomething daughter, Ki-jung, and his college-age son, Ki-woo--occupy themselves by working for peanuts in their squalid basement-level apartment. Then, by sheer luck, a lucrative business proposition will pave the way for an ingeniously insidious scheme, as Ki-woo summons up the courage to pose as an English tutor for the teenage daughter of the affluent Park family. Now, the stage seems set for an unceasing winner-take-all class war. How does one get rid of a parasite?',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/spiderman.jpeg',
                  movieTitle: 'Spider-Man: Far From Home',
                  movieCat: 'Action, Adventure, Sci-Fi',
                  synopsis:
                      'Our friendly neighborhood Super Hero decides to join his best friends Ned, MJ, and the rest of the gang on a European vacation. However, Peter plan to leave super heroics behind for a few weeks are quickly scrapped when he begrudgingly agrees to help Nick Fury uncover the mystery of several elemental creature attacks, creating havoc across the continent.',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                MovieButton(
                  imageLoc: './assets/c_marvel_edited.jpeg',
                  movieTitle: 'Captain Marvel',
                  movieCat: 'Action, Adventure, Drama',
                  synopsis:
                      'After crashing an experimental aircraft, Air Force pilot Carol Danvers is discovered by the Kree and trained as a member of the elite Starforce Military under the command of her mentor Yon-Rogg. Six years later, after escaping to Earth while under attack by the Skrulls, Danvers begins to discover there\'s more to her past. With help from S.H.I.E.L.D. agent Nick Fury, they set out to unravel the truth.',
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieButton(
                  imageLoc: './assets/alladin.jpeg',
                  movieTitle: 'Aladdin',
                  movieCat: 'Adventure, Family, Fantasy',
                  synopsis:
                      'A kind-hearted street urchin Aladdin vies for the love of the beautiful princess Jasmine, the princess of Agrabah. When he finds a magic lamp, he uses the genie\'s magic power to make himself a prince in order to marry her. He\'s also on a mission to stop the powerful Jafar who plots to steal the magic lamp that could make his deepest wishes come true.',
                ),
                Padding(padding: EdgeInsets.only(right: 48)),
                Container(
                  width: 148,
                  height: 220,
                  decoration: BoxDecoration(color: Color(0xffffffcc)),
                )
              ],
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 100.0))
      ]),
    );
  }
}
