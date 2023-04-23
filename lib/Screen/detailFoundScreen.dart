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
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: ElevatedButton(
                onPressed: () {
                  style:
                  ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 88, 87, 87), //background color of button
                      //side: BorderSide(width:3, color:Colors.brown), //border width and color
                      // elevation: 3, //elevation of button
                      // shape: RoundedRectangleBorder( //to set border radius to button
                      //     borderRadius: BorderRadius.circular(30)
                      // ),

                      padding:
                          EdgeInsets.all(20) //content padding inside button
                      );

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoundScreen()));
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 24.0,
                )),
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
            margin: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 60,
                  color: Colors.greenAccent.shade700,
                  child: const Icon(Icons.info, color: Colors.white, size: 25),
                ),
                RichText(
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text:
                          "Unde tempora cupiditate placeat fuga veritatis nihil aliquam ipsam.",
                      style: TextStyle(
                        height: 5,
                        backgroundColor: Colors.grey,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
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
                    Text('Trouvé par'),
                    Text('Ail Karim'),
                    Text('30 point'),
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
