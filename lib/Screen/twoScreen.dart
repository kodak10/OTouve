import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
          children: <Widget>[
              Container(
                    margin:const EdgeInsets.all(8.0),
                    child: Card(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                        child: InkWell(
                           onTap: () => print("ciao"),     
                           child: Column(
                                children: <Widget>[
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),
                                      child: Image.asset(
                                        'img/britannia.jpg',
                                        width: 300,
                                        height: 150,
                                        fit:BoxFit.fill  

                                      ),
                                    ),
                                    const ListTile(
                                      title: Text('Pub 1'),
                                      subtitle: Text('Location 1'),
                                    ),
                                ],
                           ),
                        ),
                    ),
              ),
          ],
        ),
    );
  }
}
