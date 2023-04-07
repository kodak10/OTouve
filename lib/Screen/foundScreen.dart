import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:otrouve/Component/previewlist_found.dart';


class FoundScreen extends StatefulWidget {
  const FoundScreen({Key? key}) : super(key: key);

  @override
  State<FoundScreen> createState() => _FoundScreenState();
}

class _FoundScreenState extends State<FoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe7eefb),
      body: SafeArea(
        child: ListView(
          primary: true,
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
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 24.0,
                )
              ]),
            ),
            
            const PageViewFoundOjectList(),
            const SizedBox(
              height: 42.52,
            ),
            
           
          ],
        ),
      ),
    );
  }
}
