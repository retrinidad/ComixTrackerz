import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'marvelpage.dart';
import 'dcpage.dart';
import 'imagepage.dart';
import 'darkhorsepage.dart';
import 'idwpage.dart';


class BasePage extends StatefulWidget{
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage>{

  void _access_Marvel(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => MarvelPage()),
    );
  }

  void _access_DC(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => DCPage()),
    );
  }

  void _access_Image(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => ImagePage()),
    );
  }

  void _access_DarkHorse(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => DarkHorsePage()),
    );
  }

  void _access_IDW(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => IDWPage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Comix Trackerz"),
      ),
      body: Column(
        children:[
          Container(
            alignment: Alignment.center,
              child: SizedBox(
                height: 100,
                child: ElevatedButton(
                onPressed: () { _access_Marvel();},
                  clipBehavior: Clip.antiAlias,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0I63kg4t03ykwNSUh782fh2CPdwkCy5poIA&s', fit: BoxFit.cover),
              ),
              )
          ),
          Container(
              alignment: Alignment.center,
            child: SizedBox(
              height: 100,
              child: ElevatedButton(
                  onPressed: () { _access_DC();},
                  clipBehavior: Clip.antiAlias,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                child: Image.network('https://static1.srcdn.com/wordpress/wp-content/uploads/2020/03/DC-Comics-Logo.jpg', fit: BoxFit.cover),
                ),
                )

          ),
          Container(
              alignment: Alignment.center,
              child: SizedBox(
                height: 100,
                child: ElevatedButton(
                  onPressed: () { _access_Image();},
                  clipBehavior: Clip.antiAlias,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.network('https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:auto/h:auto/q:75/https://bleedingcool.com/wp-content/uploads/2021/04/Image-Comics-Logo.jpg', fit: BoxFit.cover),
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              child: SizedBox(
                height: 100,
                child: ElevatedButton(
                  onPressed: () { _access_DarkHorse();},
                  clipBehavior: Clip.antiAlias,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr6IZ9Z1CiBKlVg-WjTZhTZJs6qafOErN0ZQ&s', fit: BoxFit.cover),
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              child: SizedBox(
                height: 100,
                child: ElevatedButton(
                  onPressed: () { _access_IDW();},
                  clipBehavior: Clip.antiAlias,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/IDW_Publishing_logo.svg/1200px-IDW_Publishing_logo.svg.png', fit: BoxFit.cover),
                ),
              )
          ),
        ],
      ),
    );
  }
}