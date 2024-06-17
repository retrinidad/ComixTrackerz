import 'package:comix_trackerz/base_page.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';
import 'comic_data.dart';



class MarvelPage extends StatefulWidget{
  const MarvelPage({Key? key}) : super(key: key);
  @override
  State<MarvelPage> createState() => _MarvelPageState();
}

class _MarvelPageState extends State<MarvelPage> {

  List<Comic> comics = <Comic>[];

  _MarvelPageState(){
    Comic c0 = Comic("Aliens vs. Avengers","https://cdn.marvel.com/u/prod/marvel/i/mg/6/d0/66212b88e73ee/clean.jpg","1","08/28/2024","1");
    Comic c1 = Comic("Amazing Spider-Man","https://cdn.marvel.com/u/prod/marvel/i/mg/2/e0/66212b8c7a223/clean.jpg","53","07/31/2024","6");
    Comic c2 = Comic("Amazing Spider-Man","https://cdn.marvel.com/u/prod/marvel/i/mg/9/60/66212b8ccf76a/clean.jpg","54","07/31/2024","6");
    Comic c3 = Comic("Amazing Spider-Man","https://cdn.marvel.com/u/prod/marvel/i/mg/c/d0/664cced468ee1/clean.jpg","55","08/14/2024","6");
    Comic c4 = Comic("Avengers","https://cdn.marvel.com/u/prod/marvel/i/mg/5/50/66212baa0f315/clean.jpg","16","07/10/2024","9");
    Comic c5 = Comic("Avengers","https://cdn.marvel.com/u/prod/marvel/i/mg/1/c0/664cceee0daa0/clean.jpg","17","08/07/2024","9");
    Comic c6 = Comic("Blood Hunt","https://cdn.marvel.com/u/prod/marvel/i/mg/3/40/66212baf71953/clean.jpg","5","07/31/2024","1");
    Comic c7 = Comic("Captain America","https://cdn.marvel.com/u/prod/marvel/i/mg/5/80/66212bb1f1a45/clean.jpg","11","07/24/2024","11");
    Comic c8 = Comic("Captain America","https://cdn.marvel.com/u/prod/marvel/i/mg/f/40/664ccef01b8dc/clean.jpg","12","08/28/2024","11");
    Comic c9 = Comic("Captain Marvel","https://cdn.marvel.com/u/prod/marvel/i/mg/3/60/66229ea90d153/clean.jpg","10","07/31/2024","11");
    Comic c10 = Comic("Daredevil","https://cdn.marvel.com/u/prod/marvel/i/mg/6/50/66212bc3c99b4/clean.jpg","11","08/07/2024","8");
    Comic c11 = Comic("Daredevil","https://cdn.marvel.com/u/prod/marvel/i/mg/c/90/664ccef3a096d/clean.jpg","12","08/07/2024","8");
    Comic c12 = Comic("Doctor Strange","https://cdn.marvel.com/u/prod/marvel/i/mg/5/20/66212bcd2a112/clean.jpg","17","07/03/2024","6");
    Comic c13 = Comic("Doctor Strange","https://cdn.marvel.com/u/prod/marvel/i/mg/8/b0/664ccf0a352b1/clean.jpg","18","08/07/2024","6");
    Comic c14 = Comic("Fantastic Four","https://cdn.marvel.com/u/prod/marvel/i/mg/9/00/66212bd935aae/clean.jpg","22","07/10/2024","7");
    Comic c15 = Comic("Fantastic Four","https://cdn.marvel.com/u/prod/marvel/i/mg/f/50/664ccf11bce9c/clean.jpg","23","08/14/2024","7");
    Comic c16 = Comic("Fantastic Four","https://cdn.marvel.com/u/prod/marvel/i/mg/6/d0/664ccf124d957/clean.jpg","24","08/28/2024","7");
    Comic c17 = Comic("Incredible Hulk","https://cdn.marvel.com/u/prod/marvel/i/mg/3/a0/66212be8634e7/clean.jpg","14","07/17/2024","4");
    Comic c18 = Comic("Incredible Hulk","https://cdn.marvel.com/u/prod/marvel/i/mg/9/80/664ccf303ff81/clean.jpg","15","08/07/2024","4");
    Comic c19 = Comic("Incredible Hulk","https://cdn.marvel.com/u/prod/marvel/i/mg/f/00/664ccf31baf4b/clean.jpg","16","08/21/2024","4");
    Comic c20 = Comic("Invincible Iron Man","https://cdn.marvel.com/u/prod/marvel/i/mg/6/40/66212bfc13f67/clean.jpg","20","07/17/2024","5");
    Comic c21 = Comic("Miles Morales: Spider-Man","https://cdn.marvel.com/u/prod/marvel/i/mg/8/a0/66212c06dadd2/clean.jpg","22","07/03/2024","2");
    Comic c22 = Comic("Namor","https://cdn.marvel.com/u/prod/marvel/i/mg/2/f0/66212c11e4f36/clean.jpg","1","07/17/2024","2");
    Comic c23 = Comic("Namor","https://cdn.marvel.com/u/prod/marvel/i/mg/c/40/664ccf4cbd514/clean.jpg","2","08/21/2024","2");
    Comic c24 = Comic("Star Wars","https://cdn.marvel.com/u/prod/marvel/i/mg/0/03/66212b104d973/clean.jpg","48","07/17/2024","2");
    Comic c25 = Comic("Star Wars","https://cdn.marvel.com/u/prod/marvel/i/mg/3/c0/664ccf7709260/clean.jpg","49","08/21/2024","2");
    Comic c26 = Comic("Star Wars: Inquisitors","https://cdn.marvel.com/u/prod/marvel/i/mg/2/f0/66212b1062e9d/clean.jpg","1","07/03/2024","1");
    Comic c27 = Comic("Star Wars: Inquisitors","https://cdn.marvel.com/u/prod/marvel/i/mg/c/40/664ccf7aa09b3/clean.jpg","2","08/07/2024","1");
    Comic c28 = Comic("The Immortal Thor","https://i.ebayimg.com/images/g/ncoAAOSwDyBmPaCG/s-l1200.webp","13","07/31/2024","1");
    Comic c29 = Comic("The Immortal Thor","https://cdn.marvel.com/u/prod/marvel/i/mg/9/40/664ccf31c5b27/clean.jpg","14","08/14/2024","1");
    Comic c30 = Comic("Ultimate Black Panther","https://cdn.marvel.com/u/prod/marvel/i/mg/f/b0/66212b2c00486/clean.jpg","6","07/24/2024","1");
    Comic c31 = Comic("Ultimate Black Panther","https://cdn.marvel.com/u/prod/marvel/i/mg/f/b0/664ccf8dd93aa/clean.jpg","7","08/07/2024","1");
    Comic c32 = Comic("Ultimate Spider-Man","https://cdn.marvel.com/u/prod/marvel/i/mg/8/c0/66212b2c1a5ff/clean.jpg","7", "07/31/2024","3");
    Comic c33 = Comic("Ultimate Spider-Man","https://cdn.marvel.com/u/prod/marvel/i/mg/9/c0/664ccfa865b18/clean.jpg","8", "08/21/2024","3");
    Comic c34 = Comic("Ultimates","https://cdn.marvel.com/u/prod/marvel/i/mg/8/50/66212b2c1b5ac/clean.jpg","2","07/10/2024","4");
    Comic c35 = Comic("Ultimates","https://cdn.marvel.com/u/prod/marvel/i/mg/d/00/664ccf8e7a19d/clean.jpg","3","08/14/2024","4");
    Comic c36 = Comic("Ultimate X-Men","https://cdn.marvel.com/u/prod/marvel/i/mg/c/50/66212b2cdffc9/clean.jpg","5","07/17/2024","2");
    Comic c37 = Comic("Ultimate X-Men","https://cdn.marvel.com/u/prod/marvel/i/mg/6/a0/664cce95172d2/clean.jpg","6","08/28/2024","2");
    Comic c38 = Comic("Uncanny X-Men","https://cdn.marvel.com/u/prod/marvel/i/mg/3/d0/664cce9547206/clean.jpg","1","08/07/2024","6");
    Comic c39 = Comic("Venom","https://cdn.marvel.com/u/prod/marvel/i/mg/8/70/66212b4ab3fb1/clean.jpg","35","07/03/2024","5");
    Comic c40 = Comic("Venom","https://cdn.marvel.com/u/prod/marvel/i/mg/7/80/664cce9556d78/clean.jpg","36","08/14/2024","5");
    Comic c41 = Comic("Wolverine: Revenge","https://cdn.marvel.com/u/prod/marvel/i/mg/c/20/664cceb32d5b4/clean.jpg","1","08/21/2024","1");
    Comic c42 = Comic("X-Factor","https://cdn.marvel.com/u/prod/marvel/i/mg/5/d0/664cceb328011/clean.jpg","1","08/14/2024","5");
    Comic c43 = Comic("X-Force","https://cdn.marvel.com/u/prod/marvel/i/mg/3/a0/66212b6b44f79/clean.jpg","1","07/31/2024","7");
    Comic c44 = Comic("X-Force","https://cdn.marvel.com/u/prod/marvel/i/mg/e/f0/664cced10ba8c/clean.jpg","2","08/28/2024","7");
    Comic c45 = Comic("X-Men","https://cdn.marvel.com/u/prod/marvel/i/mg/2/f0/66212b6bb5363/clean.jpg","1","07/10/2024","7");
    Comic c46 = Comic("X-Men","https://cdn.marvel.com/u/prod/marvel/i/mg/6/50/664cced171237/clean.jpg","2","08/14/2024","7");
    Comic c47 = Comic("X-Men","https://cdn.marvel.com/u/prod/marvel/i/mg/f/30/664cced2eae24/clean.jpg","3","08/28/2024","7");


    comics = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Marvel Comics - Upcoming Releases")
      ),
      body: ListView.builder(
          itemCount: comics.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 140,
              margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              color: Colors.red,
              child: Row(
                  children:[
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: Image(
                        image: NetworkImage(comics[index].coverImage),
                        width: 70,
                        height: 140,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Series Name: " + comics[index].seriesName,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Issue: " + comics[index].issue,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Vol: " + comics[index].vol,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Release Date: " + comics[index].releaseDate,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ]
              ),
            );
          }),
    );
  }


}
