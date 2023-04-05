
import 'package:flutter/material.dart';

class testtt extends StatefulWidget {
  const testtt({Key? key}) : super(key: key);

  @override
  _testttState createState() => _testttState();
}

class _testttState extends State<testtt> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(

        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(
                'https://picsum.photos/seed/137/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/175/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/255/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/150/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/473/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/7/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/547/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/990/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/354/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://picsum.photos/seed/729/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
