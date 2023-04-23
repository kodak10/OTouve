import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

import 'package:otrouve/utils/widget.dart';
import 'package:otrouve/utils/color.dart';

import 'package:otrouve/Screen/homeScreen.dart';

class LandinPage extends StatefulWidget {
  const LandinPage({Key? key}) : super(key: key);


  @override
  _LandinPageState createState() => _LandinPageState();
}

class _LandinPageState extends State<LandinPage> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  DateTime? backbuttonpressedTime;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> buildDotIndicator() {
      List<Widget> list = [];
      for (int i = 0; i <= 2; i++) {
        list.add(i == pageChanged ? dotIndicator(isActive: true) : dotIndicator(isActive: false));
      }

      return list;
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      pageChanged = index;
                    });
                  },
                  controller: pageController,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          child: Container(
                            height: context.height() * 0.5,
                            padding: EdgeInsets.only(top: 16),
                            alignment: Alignment.topRight,
                            child: Image(
                              image: AssetImage("images/landing_1.jpg"),
                            ),
                          ),
                          height: size.height * 0.5,
                        ),
                        Positioned(
                          top: size.height / 1.8,
                          left: 24,
                          right: 24,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Officiis", textAlign: TextAlign.center, style: boldTextStyle(size: 20)),
                              SizedBox(height: 16.0),
                              Text("Officiis, sint cupiditate cum accusamus iure quibusdam harum?", textAlign: TextAlign.center, style: secondaryTextStyle(size: 18))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: context.height() * 0.5,
                          child: Image(
                            image: AssetImage("images/landing_2.jpg"),
                          ),
                        ),
                        Positioned(
                          top: size.height / 1.8,
                          left: 24,
                          right: 24,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("ipsam earum", textAlign: TextAlign.center, style: boldTextStyle(size: 20)),
                              SizedBox(height: 16.0),
                              Text(" Modi ipsam earum vitae eum debitis dolore? Voluptatum aperiam", maxLines: 3, textAlign: TextAlign.center, style: secondaryTextStyle(size: 18))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: context.height() * 0.5,
                          child: Image(
                            image: AssetImage("images/landing_3.jpg"),
                          ),
                        ),
                        Positioned(
                          top: size.height / 1.8,
                          left: 24,
                          right: 24,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Lorem ipsum", textAlign: TextAlign.center, style: boldTextStyle(size: 20)),
                              SizedBox(height: 16.0),
                              Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit.", textAlign: TextAlign.center, style: secondaryTextStyle(size: 18))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  pageChanged == 0
                      ? Expanded(
                          child: SizedBox(),
                          flex: 1,
                        )
                      : Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: SliderButton(
                              color: Color(0xFFFF6E18),
                              title: 'Retour',
                              onPressed: () {
                                pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeInCirc);
                              },
                            ),
                          ),
                        ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: buildDotIndicator(),
                    ),
                  ),
                  pageChanged != 2
                      ? Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 20,
                            ),
                            child: SliderButton(
                              color: Color(0xFF343EDB),
                              title: 'Suivant',
                              onPressed: () {
                                pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeInCirc);
                              },
                            ),
                          ),
                        )
                      : Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 20,
                            ),
                            child: SliderButton(
                              color: Color(0xFF343EDB),
                              title: 'Se Connecter',
                              onPressed: () {
                                finish(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
