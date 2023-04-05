import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

/* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );*/

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Yummies :) :)')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('I got clicked');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network('https://i.nefisyemektarifleri.com/2020/04/21/tavada-mayasiz-pratik-lahmacun.jpg'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('I got clicked');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network('https://im.haberturk.com/2019/09/23/ver1569240076/kofte-nasil-yapilir_2524577_810x458.jpg'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('I got clicked');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FortRoute()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network('https://i2.milimaj.com/i/milliyet/75/0x410/5ec275545542850d68dee4ef.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe Page :)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network('https://i.nefisyemektarifleri.com/2020/04/21/tavada-mayasiz-pratik-lahmacun.jpg'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,16.0),
                child: Text(
                  'Lahmacun',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' Finely chop the tomatoes and grate the garlic. Mix well every ingredient you see under the "the topping" cathegory. Let it sit in the fridge until you have your dough ready. To prepare the dough, mix everything you see under "the dough" cathegory. Knead it well, then cut the dough into 4 equal pieces. Round the pieces, cover with a clean and moisty piece of cloth, and rest for 10 minutes. Spread each dough piece large enough a regular lahmacun. Place the meat topping, and bake for up to 25 minutes'
                  ,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe Page :)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   Image.network('https://im.haberturk.com/2019/09/23/ver1569240076/kofte-nasil-yapilir_2524577_810x458.jpg'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,16.0),
                child: Text(
                  'Meatball',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Preparation of meatballs : ⇒ Put the ground beef in a deep bowl.⇒Grate the oinons and the stale bread to small pieces. ⇒ Add salt, black pepper, onions and bread to kneading them to the ground beef.⇒ Make the ground beef you kneaded as a ball and cut walnut to big pieces.  '
                  ,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FortRoute extends StatelessWidget {
  const FortRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe Page :)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network('https://i2.milimaj.com/i/milliyet/75/0x410/5ec275545542850d68dee4ef.jpg'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,16.0),
                child: Text(
                  'Döner',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Finely chop the tomatoes and grate the garlic. Mix well every ingredient you see under the "the topping" cathegory. Let it sit in the fridge until you have your dough ready. To prepare the dough, mix everything you see under "the dough" cathegory. Knead it well, then cut the dough into 4 equal pieces. Round the pieces, cover with a clean and moisty piece of cloth, and rest for 10 minutes. Spread each dough piece large enough a regular lahmacun. Place the meat topping, and bake for up to 25 minutes'
                  ,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}