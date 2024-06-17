import 'package:comix_trackerz/base_page.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';
import 'comic_data.dart';



class IDWPage extends StatefulWidget{
  const IDWPage({Key? key}) : super(key: key);
  @override
  State<IDWPage> createState() => _IDWPageState();
}

class _IDWPageState extends State<IDWPage> {

  List<Comic> comics = <Comic>[];

  _IDWPageState(){
    Comic c1 = Comic("Godzilla Rivals: Vs. Manda","https://www.kaijubattle.net/uploads/2/9/5/7/29570123/published/82771403321200111.png?1713653787","1","07/31/2024","1");
    Comic c2 = Comic("Godzilla Vs. The Mighty Morphin Power Rangers II","https://www.kaijubattle.net/uploads/2/9/5/7/29570123/published/82771403189800411.png?1713654035" ,"4","07/24/2024","2");
    Comic c3 = Comic("Godzilla Vs. The Mighty Morphin Power Rangers II","https://www.kaijubattle.net/uploads/2/9/5/7/29570123/452298636_orig.jpg" ,"5","08/28/2024","2");
    Comic c4 = Comic("Godzilla: Here There Be Dragons II–Sons of Giants","https://www.kaijubattle.net/uploads/2/9/5/7/29570123/published/82771403305200211a.png?1713719513" ,"2","08/07/2024","2");
    Comic c5 = Comic("Godzilla: Skate or Die","https://www.kaijubattle.net/uploads/2/9/5/7/29570123/published/82771403304500211.png?1713654445","2","07/24/2024","n/a");
    Comic c6 = Comic("Golgotha Motor Mountain","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-20.jpg","4","07/10/2024","n/a");
    Comic c7 = Comic("The Hunger and the Dusk: Book Two","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-10.jpg","1","07/10/2024","2");
    Comic c8 = Comic("The Rocketeer: Breaks Free","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-11.jpg","1","07/10/2024","n/a");
    Comic c9 = Comic("The Rocketeer: Breaks Free","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-11.jpg","2","08/21/2024","n/a");
    Comic c10 = Comic("Sonic the Hedgehog","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-16.jpg","71","07/17/2024","n/a");
    Comic c11 = Comic("Sonic the Hedgehog","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-16.jpg","72","08/21/2024","n/a");
    Comic c12 = Comic("Star Trek","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-18.jpg","22","08/21/2024","n/a");
    Comic c13 = Comic("Star Trek","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-18.jpg","23","07/17/2024","n/a");
    Comic c14 = Comic("Teenage Mutant Ninja Turtles","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-0.jpg","1","07/24/2024","2");
    Comic c15 = Comic("Teenage Mutant Ninja Turtles","https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:600/h:922/q:75/https://bleedingcool.com/wp-content/uploads/2024/04/9dd04ed5-690e-4349-8f62-caa56d0fd883-0.jpg","2","09/11/2024","2");


    comics = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("IDW Comics - Upcoming Releases")
      ),
      body: ListView.builder(
          itemCount: comics.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 140,
              margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              color: Colors.deepPurple,
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
