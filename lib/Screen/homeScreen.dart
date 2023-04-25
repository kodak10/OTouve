import 'package:flutter/material.dart';
import 'package:otrouve/Screen/foundScreen.dart';

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
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const CircleAvatar(
              backgroundImage: AssetImage("images/user.jpg"),
            ),
            RichText(
              text: const TextSpan(
                  text: "O'TROUVE",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const Icon(
              Icons.settings_input_component,
              color: Colors.black,
              size: 24.0,
            )
          ]),
        ),
        Container(
          margin: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                          padding:EdgeInsets.all(20) //content padding inside button
                      ),
                onPressed: () {

                  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 255, 255, 255),
                  );
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const FoundScreen()));
                },
                child: Container(
                  height: 190,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset("images/img_1.png",
                          width: 200, height: 130, fit: BoxFit.fill),
                          SizedBox(
                            height: 20,
                          ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              text:
                                  "Retrouver vos objets perdus deviens plus facile",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 201, 18, 185),
                  );
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const FoundScreen()));
                },
                child: Container(
                   width: double.infinity,
                  height: 180,
                  child: Column(
                    children: [
                      Image.asset("images/img_2.png",
                          width: 200, height: 130, fit: BoxFit.fill),
                          SizedBox(
                            height: 20,
                          ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              text:
                                  "J'ai perdu / J'ai retrouvé",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 18, 95, 48), //background color of button
                      //side: BorderSide(width:3, color:Colors.brown), //border width and color
                      // elevation: 3, //elevation of button
                      // shape: RoundedRectangleBorder( //to set border radius to button
                      //     borderRadius: BorderRadius.circular(30)
                      // ),

                      padding:
                          EdgeInsets.all(20) //content padding inside button
                      ),
                onPressed: () {
                  

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoundScreen()));
                },
                child: Container(
                   width: double.infinity,
                  height: 180,
                  child: Column(
                    children: [
                      Image.asset("images/img_3.png",
                          width: 200, height: 130, fit: BoxFit.fill),
                          SizedBox(
                            height: 20,
                          ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              text:
                                  "Objet trouvés",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
