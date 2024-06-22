import 'package:comix_trackerz/base_page.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';
import 'comic_data.dart';



class DarkHorsePage extends StatefulWidget{
  const DarkHorsePage({Key? key}) : super(key: key);
  @override
  State<DarkHorsePage> createState() => _DarkHorsePageState();
}

class _DarkHorsePageState extends State<DarkHorsePage> {

  List<Comic> comics = <Comic>[];

  _DarkHorsePageState(){
    Comic c1 = Comic("AVATAR: FRONTIERS OF PANDORA--SO'LEK'S JOURNEY","https://i.ebayimg.com/images/g/OGcAAOSwiKtmPEtN/s-l960.webp","5","07/17/2024","1");
    Comic c2 = Comic("STAR WARS: THE HIGH REPUBLIC ADVENTURES PHASE III #7","https://i.ebayimg.com/images/g/XtcAAOSwxc9mPR4M/s-l960.webp","7","07/10/2024","1");
    Comic c3 = Comic("Helen of Wyndhorn","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSotm8NZ5g4N7NNPVejWiPH8KrmzlYDs8cDZg&s","4","07/24/2024","4");
    Comic c4 = Comic("Minor Threats: The Fastest Way Down","https://i.ebayimg.com/images/g/WuoAAOSwJzxmASCZ/s-l1600.webp","4","07/24/2024","1");
    Comic c5 = Comic("Resident Alien: The Book of Life","https://i.ebayimg.com/thumbs/images/g/H0oAAOSwE5ZmUbcy/s-l300.webp","2","07/24/2024","1");
    Comic c6 = Comic("Joy Operations 2","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM-zmpsbYA25-2X3js2g3thtGzqmM5xkKvqg&s","2","07/24/2024","2");
    Comic c7 = Comic("Kill All Immortals","https://i.ebayimg.com/images/g/oHkAAOSwQElmMvOg/s-l1600.webp","1","07/10/2024","1");
    Comic c8 = Comic("Monsters Are My Business","https://i.ebayimg.com/images/g/1MEAAOSwhMtmZKOk/s-l1600.webp","4","07/10/2024","1");
    Comic c9 = Comic("Saint John","https://i.ebayimg.com/images/g/KhMAAOSwud9l0OR~/s-l1600.webp","3","07/31/2024","1");
    Comic c10 = Comic("The Witcher: Corvo Bianco", "https://i.ebayimg.com/images/g/uJ0AAOSwd3lma0bv/s-l1600.webp","3","07/17/2024","1");


    comics = [c1,c3,c6,c7,c4,c8,c5,c9,c2,c10];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Dark Horse Comics - Upcoming Releases")
      ),
      body: ListView.builder(
          itemCount: comics.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 140,
              margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              color: Colors.grey,
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
