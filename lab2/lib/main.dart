import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

   Widget build(BuildContext context) {
      return MaterialApp(
       home: Scaffold(
          appBar: AppBar(
            title: const Text('MUHAMMED EŞİT'),
              leading: Builder(
                    builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                );
              }
          ),
              actions: <Widget>[
            IconButton(
                        icon: const Icon(Icons.favorite),
                   onPressed: () {},
            ),
            IconButton(
                     icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.orangeAccent,
        ),
        body: ListView(
            padding: const EdgeInsets.fromLTRB(10, 60, 10, 10),
            children: [
              Image.network('https://image.winudf.com/v2/image1/Y29tLndhbGxwYXBlcnMua2FuZ2Fsa29wZWtfc2NyZWVuXzBfMTU1NDQ2NTY1N18wNDQ/screen-0.jpg?fakeurl=1&type=.jpg'),
                      const SizedBox(width: 30, height: 80),
              Image.network('http://tusba.gov.tr/kurumlar/tusba.gov.tr/foto-galeri/vankedisi/10.jpg'),
            ]
        ),
      ),
    );
  }
}