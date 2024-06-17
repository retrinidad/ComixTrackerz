import 'package:comix_trackerz/base_page.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';
import 'comic_data.dart';



class DCPage extends StatefulWidget{
  const DCPage({Key? key}) : super(key: key);
  @override
  State<DCPage> createState() => _DCPageState();
}

class _DCPageState extends State<DCPage> {

  List<Comic> comics = <Comic>[];

  _DCPageState(){
    Comic c1 = Comic("Absolute Power","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Absolute-Power-1-Mora.jpg?resize=1024%2C792&ssl=1","1","07/03/2024","1");
    Comic c2 = Comic("Absolute Power","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Absolute-Power-2-Mora.jpg?resize=1012%2C1536&ssl=1","2","08/07/2024","1");
    Comic c3 = Comic("Absolute Power: Task Force VII","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Absolute-Power-Task-Force-VII-1-Woods.jpg?resize=1011%2C1536&ssl=1","1","07/10/2024","1");
    Comic c4 = Comic("Absolute Power: Ground Zero","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Absolute-Power-Ground-Zero-1-Mora.jpg?resize=1012%2C1536&ssl=1","1","06/25/2024","1");
    Comic c5 = Comic("Absolute Power: Origins","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Absolute-Power-Origins-1-Rodriguez.jpg?resize=1012%2C1536&ssl=1","1","07/24/2024","1");
    Comic c6 = Comic("Absolute Power: Origins","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Absolute-Power-Origins-2-Galmon.jpg?resize=1011%2C1536&ssl=1","2","08/28/2024","1");
    Comic c7 = Comic("Absolute Power: Task Force VII","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Absolute-Power-Task-Force-VII-1-Woods.jpg?resize=1011%2C1536&ssl=1","1","07/10/2024","1");
    Comic c8 = Comic("Absolute Power: Task Force VII","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Absolute-Power-Task-Force-VII-2-Woods.jpg?resize=1011%2C1536&ssl=1","2","07/24/2024","1");
    Comic c9 = Comic("Absolute Power: Task Force VII","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Absolute-Power-Task-Force-VII-3-Woods.jpg?resize=1011%2C1536&ssl=1","3","07/31/2024","1");
    Comic c10 = Comic("Absolute Power: Task Force VII","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Absolute-Power-Task-Force-VII-4-OTO-Beach.jpg?resize=993%2C1536&ssl=1","4","08/14/2024","1");
    Comic c11 = Comic("Absolute Power: Task Force VII","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Absolute-Power-Task-Force-VII-05-Woods.jpg?resize=1011%2C1536&ssl=1","5","08/28/2024","1");
    Comic c12 = Comic("Action Comics","https://krscomics.com/cdn/shop/files/115493-hr.jpg?v=1715117178","1067","07/10/2024","1");
    Comic c13 = Comic("Action Comics","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Action-Comics-1068-Barrows.jpg?resize=1011%2C1536&ssl=1","1068","08/14/2024","1");
    Comic c14 = Comic("Batman","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM7tjWuvow3nJ4RwF7XeaMCE4BFCfgo-3lrg&s","150","07/03/2024","3");
    Comic c15 = Comic("Batman","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Batman-151-1-25-Harren.jpg?resize=1011%2C1536&ssl=1","151","08/07/2024","3");
    Comic c16 = Comic("Batman and Robin","https://i0.wp.com/gatecrashers.fan/wp-content/uploads/2024/04/Batman-and-Robin-11-Di-Meo.jpg?resize=768%2C1167&ssl=1","11","07/10/2024","3");
    Comic c17 = Comic("Batman and Robin","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Batman-and-Robin-12-1-25-Georgiev.jpg?resize=1015%2C1536&ssl=1","12","08/14/2024","3");
    Comic c18 = Comic("Blue Beetle","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Blue-Beetle-11-Gutierrez.jpg?resize=1012%2C1536&ssl=1","10","07/03/2024","10");
    Comic c19 = Comic("Detective Comics","https://i0.wp.com/gatecrashers.fan/wp-content/uploads/2024/04/Detective-Comics-1087-Cagle.jpg?resize=768%2C1165&ssl=1","1087","07/24/2024","1");
    Comic c20 = Comic("Detective Comics","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Detective-Comics-1088-1-25-Fiumara.jpg?resize=1012%2C1536&ssl=1","1088","08/28/2024","1");
    Comic c21 = Comic("Green Arrow","https://goldenapplecomics.com/cdn/shop/files/115731-hr.jpg?v=1713647933","14","07/24/2024","14");
    Comic c22 = Comic("Green Arrow","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Green-Arrow-15-OTO-Clarke.jpg?resize=768%2C1086&ssl=1","15","07/24/2024","14");
    Comic c23 = Comic("Green Lantern","https://cdn.mos.cms.futurecdn.net/fWJozbdpd8WDvRriSobyeg-1200-80.jpg.webp","13","07/10/2024","7");
    Comic c24 = Comic("Green Lantern","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Green-Lantern-14-1-25-Chuma.jpg?resize=1012%2C1536&ssl=1","14","07/10/2024","7");
    Comic c25 = Comic("Green Lantern: War Journal","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz44xQ67TetIOuYfPEir-rIkKxRRpln2pkkA&s","11","07/17/2024","1");
    Comic c26 = Comic("Green Lantern: War Journal","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Green-Lantern-War-Journal-12-OTO-Spears.jpg?resize=1002%2C1536&ssl=1","12","08/21/2024","1");
    Comic c27 = Comic("Justice Society of America","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Justice-Society-of-America-12-Janin.jpg?resize=1011%2C1536&ssl=1","12","08/28/2024","4");
    Comic c28 = Comic("Shazam!","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Shazam-13-Melnikov.jpg?resize=1012%2C1536&ssl=1","13","07/03/2024","5");
    Comic c29 = Comic("Shazam!","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Shazam-14-main-Melnikov.jpg?resize=1012%2C1536&ssl=1","14","08/07/2024","5");
    Comic c30 = Comic("Sinister Sons","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Sinister-Sons-6-Georgiev.jpg?resize=1015%2C1536&ssl=1","6","07/10/2024","1");
    Comic c31 = Comic("Superman","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/04/Superman-16-Campbell.jpg?resize=1011%2C1536&ssl=1","16","07/17/2024","6");
    Comic c32 = Comic("Superman","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Superman-17-Campbell.jpg?resize=1011%2C1536&ssl=1","17","08/21/2024","6");
    Comic c33 = Comic("The Flash","https://i.ebayimg.com/images/g/6fYAAOSwmFZmMJZ1/s-l1200.webp","11","07/24/2024","6");
    Comic c34 = Comic("The Flash","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/The-Flash-12-Perez.jpg?resize=1011%2C1536&ssl=1","12","08/28/2024","6");
    Comic c35 = Comic("Titans","https://goldenapplecomics.com/cdn/shop/files/115971-hr.jpg?v=1713647860","13","07/17/2024","4");
    Comic c36 = Comic("Titans","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Titans-14-Meyer.jpg?resize=1011%2C1536&ssl=1","14","08/21/2024","4");
    Comic c37 = Comic("Wonder Woman","https://i.ebayimg.com/images/g/ncoAAOSwDyBmPaCG/s-l1200.webp","11","07/17/2024","6");
    Comic c38 = Comic("Wonder Woman","https://i0.wp.com/comicbookdispatch.com/wp-content/uploads/2024/05/Wonder-Woman-12-Sampere.jpg?resize=1012%2C1536&ssl=1","12","08/121/2024","6");


    comics = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("DC Comics - Upcoming Releases")
      ),
      body: ListView.builder(
          itemCount: comics.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 140,
              margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              color: Colors.blue,
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
