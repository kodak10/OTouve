import 'package:flutter/material.dart';
import 'package:otrouve/model/found.dart';
import 'package:otrouve/Component/found_card.dart';


class PageViewFoundOjectList extends StatefulWidget {
  const PageViewFoundOjectList({Key? key}) : super(key: key);

  @override
  State<PageViewFoundOjectList> createState() => _PageViewFoundOjectListState();
}

class _PageViewFoundOjectListState extends State<PageViewFoundOjectList> {
  final PageController pageController = PageController(viewportFraction: 0.75);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 401,
      child: PageView.builder(
        padEnds: false,
        controller: pageController,
        itemCount: founds.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          bool active = index == currentPage;
          return Opacity(
            opacity: currentPage == index? 1.0: 0.5,
            child: FoundCard(
              active: active,
              index: index,
              found: founds[index],
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentPage != position) {
        {
          setState(() {
            currentPage = position;
          });
        }
      }
    });
  }
}
