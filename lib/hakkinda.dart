import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffd78cf2),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Hakkında",
          style: GoogleFonts.playfairDisplay(
            fontSize: 30.0,
            color: Colors.brown[900],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.auto_awesome,
                  color: Color(0xffd78cf2),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1.5,
            ),
            SizedBox(
              height: 15,
            ),
            buildGestureDetector("Bilgi","Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193311022 numaralı Başak Selin Ünsal tarafından 30 Nisan 2021 günü yapılmıştır.",context),
          ],
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector(String title,String ipucu,BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffd78cf2),
                  ),
                ),

                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(ipucu,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Kapat",
                        style: TextStyle(
                          color: Color(0xffd78cf2),
                        ),
                      ),
                  ),
                ],
              );
            });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
