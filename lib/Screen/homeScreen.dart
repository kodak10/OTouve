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
          margin: const EdgeInsets.symmetric(horizontal: 24),
          height: 180,
          child: Column(
            children: [
              Image.asset("images/img_1.png",
                  width: 200, height: 150, fit: BoxFit.fill),
              RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: "Retrouver vos objets perdu deviennent plus facile",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 212, 206, 1),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          height: 180,
          child: Column(
            children: [
              Image.asset("images/img_2.png",
                  width: 200, height: 150, fit: BoxFit.fill),
              RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: "J'ai Perdu / J'ai retrouvé",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )))
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 212, 206, 1),
            );
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FoundScreen()));
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            height: 180,
            child: Column(
              children: [
                Image.asset("images/img_3.png",
                    width: 200, height: 150, fit: BoxFit.fill),
                RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: "Objet trouvé",
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
    ));
  }
}
