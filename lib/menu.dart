import 'package:flutter/material.dart';
import 'package:mono/degerlendirme.dart';
import 'package:mono/profil.dart';
import 'package:mono/favoriler.dart';
import 'package:mono/ayarlar.dart';
import 'package:mono/hakkinda.dart';


class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:<Widget> [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Color(0xffd78cf2),
            child: Center(
              child: Column(
                children:<Widget> [
                  Container(
                    width: 100,
                    height: 100,
                    margin:EdgeInsets.only(top: 30,bottom: 10,
                    ) ,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text("Başak Selin Ünsal",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white
                  ),
                  ),
                  Text("basakselin00@gmail.com",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading:Icon(Icons.person),
            title: Text("Profil",
            style: TextStyle(
              fontSize: 18.0
            ),
            ),
            onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return profil();
                  }),
                );
              },
          ),
          ListTile(
            leading:Icon(Icons.favorite),
            title: Text("Favoriler",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return favori();
                }),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title: Text("Ayarlar",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return ayarlar();
                }),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.auto_awesome),
            title: Text("Hakkında",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return hakkinda();
                }),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.star),
            title: Text("Bizi Değerlendirin",
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return degerlendir();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
