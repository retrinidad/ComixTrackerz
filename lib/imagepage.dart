import 'package:comix_trackerz/base_page.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';
import 'comic_data.dart';



class ImagePage extends StatefulWidget{
  const ImagePage({Key? key}) : super(key: key);
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {

  List<Comic> comics = <Comic>[];

  _ImagePageState(){
    Comic c1 = Comic("Ain't No Grave","https://cdn.imagecomics.com/assets/i/releases/1033903/aint-no-grave-3-of-5_6c236071a5.jpg","3","07/10/2024","1");
    Comic c2 = Comic("Bear Pirate Viking Queen","https://cdn.imagecomics.com/assets/i/releases/1033889/bear-pirate-viking-queen-3-of-3_0970c7753e.jpg","3","07/03/2024","1");
    Comic c3 = Comic("Blood Squad Seven","https://cdn.imagecomics.com/assets/i/releases/1033880/blood-squad-seven-3_1d3a1b42ef.jpg","3","07/24/2024","1");
    Comic c4 = Comic("The Department of Truth","https://cdn.imagecomics.com/assets/i/releases/1033667/the-department-of-truth-24_d15daf0be3.jpg","24","07/31/2024","1");
    Comic c5 = Comic("The Domain","https://cdn.imagecomics.com/assets/i/releases/1033919/the-domain-1-of-5_69afce786b.jpg","1","07/10/2024","1");
    Comic c6 = Comic("Drawing Blood","https://cdn.imagecomics.com/assets/i/releases/1033863/drawing-blood-4-of-12_904fc5cfb3.jpg","4","07/31/2024","1");
    Comic c7 = Comic("Destro","https://cdn.imagecomics.com/assets/i/releases/1033870/destro-2-of-5_13a2c491c2.jpg","2","07/17/2024","1");
    Comic c8 = Comic("Falling in Love on the Path to Hell","https://cdn.imagecomics.com/assets/i/releases/1033859/falling-in-love-on-the-path-to-hell-2_99b44e64b8.jpg","2","07/10/2024","1");
    Comic c9 = Comic("Feral","https://cdn.imagecomics.com/assets/i/releases/1033960/feral-5_ef9209d255.jpg","5","07/24/2024","1");
    Comic c10 = Comic("Fishflies","https://cdn.imagecomics.com/assets/i/releases/1033850/fishflies-7-of-7_b1d563399c.jpg","7","07/17/2024","1");
    Comic c11 = Comic("The Forged","https://cdn.imagecomics.com/assets/i/releases/1031602/the-forged-9_f7cbf5aef6.jpg","9","07/31/2024","1");
    Comic c12 = Comic("Free Agents","https://cdn.imagecomics.com/assets/i/releases/1033846/free-agents-1_1174716ea5.jpg","1","07/03/2024","1");
    Comic c13 = Comic("Geiger","https://cdn.imagecomics.com/assets/i/releases/1033837/geiger-4-2_0b3c12abd1.jpg","4","07/10/2024","2");
    Comic c14 = Comic("Gunslinger Spawn","https://cdn.imagecomics.com/assets/i/releases/1031396/gunslinger-spawn-33_fbbc59e5be.jpg","33","07/03/2024","1");
    Comic c15 = Comic("King Spawn","https://cdn.imagecomics.com/assets/i/releases/1033799/king-spawn-36_5830ebeac4.jpg","36","07/24/2024","1");
    Comic c16 = Comic("Local Man","https://cdn.imagecomics.com/assets/i/releases/1031360/local-man-11_d6cbdf3234.jpg","11","07/03/2024","1");
    Comic c17 = Comic("Local Man","https://cdn.imagecomics.com/assets/i/releases/1033791/local-man-12_8a375e0fc2.jpg","12","07/24/2024","1");
    Comic c18 = Comic("Radiant Black","https://cdn.imagecomics.com/assets/i/releases/1013333/radiant-black-29_46ed3748ca.jpg","29","07/03/2024","1");
    Comic c19 = Comic("Saga","https://cdn.imagecomics.com/assets/i/releases/1033733/saga-67_f2a8cdfbff.jpg","67","07/31/2024","1");
    Comic c20 = Comic("Savage Dragon","https://cdn.imagecomics.com/assets/i/releases/1031442/savage-dragon-271_9e1260a642.jpg","271","07/03/2024","1");
    Comic c21 = Comic("Savage Dragon","https://cdn.imagecomics.com/assets/i/releases/1033730/savage-dragon-272_57cd578848.jpg","272","07/31/2024","1");
    Comic c22 = Comic("Scarlett","https://cdn.imagecomics.com/assets/i/releases/1033726/scarlett-2-of-5_ab983c105a.jpg","2","07/03/2024","1");
    Comic c23 = Comic("Transformers","https://cdn.imagecomics.com/assets/i/releases/1033612/transformers-10_a2d6747f06.jpg","10","07/10/2024","n/a");
    Comic c24 = Comic("UNIVERSAL MONSTERS: CREATURE FROM THE BLACK LAGOON LIVES!","https://cdn.imagecomics.com/assets/i/releases/1033605/universal-monsters-creature-from-the-black-lagoon-lives-4-of-4_d5b35b2d15.jpg","4","07/24/2024","1");
    Comic c25 = Comic("Void Rivals","https://cdn.imagecomics.com/assets/i/releases/1033600/void-rivals-11_ccdd59dbba.jpg","11","07/24/2024","1");
    Comic c26 = Comic("The Whisper Queen","https://cdn.imagecomics.com/assets/i/releases/1033618/the-whisper-queen-3-of-3_d861338efd.jpg","3","07/10/2024","1");
    Comic c27 = Comic("Witchblade","https://cdn.imagecomics.com/assets/i/releases/1033593/witchblade-2024-1_9e56b9c94f.jpg","1","07/17/2024","1");


    comics = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Image Comics - Upcoming Releases")
      ),
      body: ListView.builder(
        itemCount: comics.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 140,
            margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
            color: Colors.yellow,
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
