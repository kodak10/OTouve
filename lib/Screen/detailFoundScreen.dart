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
        
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, 
                    children: [
                
                
                const Icon(
                  Icons.back_hand,
                  color: Colors.black,
                  size: 24.0,
                )
              ]),
            ),

            Container(
            padding: EdgeInsets.all(16.0),
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
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'images/found/1.jpg}',
                            ),
                          ),
                        ),
                      ),
                     
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 3),
                              child: Row(children: [
                                Text(
                                  'ID: 12345',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 41, 41, 41),
                                  ),
                                )
                              ]),
                            ),

                            Container(
                              child: Row(children: [
                                Text(
                                 'Date: 22 avril 2023',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                )
                              ]),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 3),
                              child: Row(children: [
                                Text(
                                  'Type: Type A',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    backgroundColor:
                                        Color.fromARGB(19, 109, 9, 34),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 248, 248, 248),
                                  ),
                                ),
                                
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: const [
                  //      Text('ID: 12345', 
                  //       style: TextStyle(fontSize: 16,),
                  //       textAlign: TextAlign.center,
                  //      ),
                  //      Text('Date: 22 avril 2023',
                  //         style: TextStyle(fontSize: 16)),
                  //      Text('Type: Type A',
                  //         style: TextStyle(fontSize: 16)),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.greenAccent.shade700,
                  child: Icon(Icons.info, color: Colors.white, size: 25),
                ),
               
                RichText(
                  
                  
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Unde tempora cupiditate placeat fuga veritatis nihil aliquam ipsam.",
                    style: TextStyle(
                      height: 5,
                      backgroundColor: Colors.grey,
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      
                      
                    ),
                    
                  )
                )
                
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Trouvé par'),
                    Text('Ail Karim'),
                    Text('30 point'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.chat),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.call),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
           

          ],
          
        )
    );  
     
  }
}
