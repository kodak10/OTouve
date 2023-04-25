import 'package:flutter/material.dart';
import 'package:otrouve/Screen/foundScreen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 50, left: 35, right: 35, top: 10),
        decoration: BoxDecoration(
          color: Colors.greenAccent.shade700,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        child: const Text(
          'Récupérer',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: [
          Container(
            
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FoundScreen()
                          )
                          );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255), //background color of button
                        //side: BorderSide(width:3, color:Colors.brown), //border width and color
                        // elevation: 3, //elevation of button
                        // shape: RoundedRectangleBorder( //to set border radius to button
                        //     borderRadius: BorderRadius.circular(30)
                        // ),

                        //content padding inside button
                      ),
                
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 24.0,
                )
              ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.transparent),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'images/found/1.jpg}',
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 18.56,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 3),
                                            child: Row(children: const [
                                              Text(
                                                'ID',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 41, 41, 41),
                                                ),
                                              )
                                            ]),
                                          ),
                                          Row(children: const [
                                            Text(
                                              'name',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 21,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                              ),
                                            )
                                          ]),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 3),
                                            child: Row(children: const [
                                              Text(
                                                'type',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          19, 109, 9, 34),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 248, 248, 248),
                                                ),
                                              ),
                                              Text(
                                                'date',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF0E0E2D),
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0), 
                    color: Colors.greenAccent.shade700,
                  ),
                  
                 //color: Colors.greenAccent.shade700,
                  child: const Icon(Icons.info, color: Colors.white, size: 25),
                ),
                Container(
                  height: 70,
                  //width: double.infinity,
                  color: Colors.grey,
                  //padding: EdgeInsets.all(5),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: const [
                      Text(
                        'Flutter est un framework de développement d\'applications mobiles open source créé par Google. '
                        'Il permet de créer des applications pour iOS, Android et le web à partir d\'un code unique en '
                        'utilisant le langage de programmation Dart. Flutter est connu pour sa rapidité d\'exécution, '
                        'sa facilité de développement et sa riche bibliothèque de widgets personnalisables.',
                        style: TextStyle(fontSize: 14, color: Color.fromARGB(190, 0, 0, 0),),
                      ),
                      
                     ],
                  )
                
                ),
               
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Trouvé par', style: TextStyle(color: Colors.grey, fontSize: 12),),
                    Text('Ail Karim', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),),  
                    Text('30 point', style: TextStyle(color: Color.fromARGB(255, 245, 98, 0), fontSize: 12),),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chat),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.call),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
