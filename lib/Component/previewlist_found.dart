import 'package:flutter/material.dart';
import 'package:otrouve/model/found.dart';

import 'package:otrouve/Screen/detailFoundScreen.dart';

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
    return Container(
      margin: const EdgeInsets.all(20),
      // padding: const EdgeInsets.all(10),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: founds.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ElevatedButton(
              style: ElevatedButton.styleFrom(
                
                backgroundColor: const Color.fromARGB(255, 255, 255, 255), //background color of button      
                // elevation: 0,
              ),
            
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen()
                  )
                );
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 30),
                height: 250,
                decoration: BoxDecoration(
                  
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(14),
                ),

                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                           width: double.maxFinite,
                            height: 150,
                            child: Image.asset(
                              'images/found/${founds[index].foundImage}',
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          
                          Expanded(
                            child: Column(
                              
                              children: [
                                Container(
                                 // margin: EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0, top: 10,),
                                      child:  Text(
                                      founds[index].foundID,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 41, 41, 41),
                                      ),
                                    ),
                                    )
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        founds[index].foundName,
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
                                  margin: EdgeInsets.only(left: 10.0),

                                  child: Row(
                                    children: [
                                      
                                      Text(
                                        founds[index].foundType,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          
                                          
                                          backgroundColor:
                                              Color.fromARGB(255, 109, 9, 34),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromARGB(255, 248, 248, 248),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Text('perdu le:  '),
                                           
                                            Text(
                                            founds[index].foundDate,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF0E0E2D),
                                            ),
                                          ),

                                      ],))
                                      
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
              ));
         
        },
      ),
    );
  }
}
