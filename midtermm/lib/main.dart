import 'package:flutter/material.dart';
class Store{
  String itemName;

  String itemImage;
  Store.items({
    this.itemImage="",
    this.itemName="",

  });
}

List<Store> storeItems =[

  Store.items(
    itemName: "Dauntless",
    itemImage: "https://www.freetogame.com/g/1/thumbnail.jpg",
  ),
  Store.items(
    itemName: "World of Tanks",
    itemImage: 'https://www.freetogame.com/g/2/thumbnail.jpg',
  ),

  Store.items(
    itemName:'Warframe',
    itemImage:  'https://www.freetogame.com/g/3/thumbnail.jpg',
  ),

  Store.items(
    itemName: 'CRSED: F.O.A.D.',
    itemImage: 'https://www.freetogame.com/g/4/thumbnail.jpg',
  ),
  Store.items(
    itemName: 'Crossout',
    itemImage: 'https://www.freetogame.com/g/5/thumbnail.jpg',
  ),
  Store.items(
    itemName:'Blade and Soul',
    itemImage: 'https://www.freetogame.com/g/6/thumbnail.jpg',
  ),
  Store.items(
    itemName:'Armored Warfare',
    itemImage: 'https://www.freetogame.com/g/7/thumbnail.jpg',
  ),
  Store.items(
    itemName: 'Trove',
    itemImage: 'https://www.freetogame.com/g/8/thumbnail.jpg',
  ),
  Store.items(
    itemName: 'World of Warships',
    itemImage: 'https://www.freetogame.com/g/9/thumbnail.jpg',
  ),
  Store.items(
    itemName:'ArcheAge',
    itemImage:'https://www.freetogame.com/g/10/thumbnail.jpg',
  ),



];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(    Icons.menu),
        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
            },
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(
          "Free-to-Play Games",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: storeItems.length ,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              //here you can add youy action on grid element Tab
            },
            child: Card(
              child: Stack(
                alignment: FractionalOffset.bottomCenter,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(

                            image: NetworkImage(storeItems[index].itemImage)
                        )
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    color: Colors.black,
                    child: Text(storeItems[index].itemName,
                      style: TextStyle     (fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white),),
                  )
                ],
              ),
            ),
          );
        },),
    );
  }

}