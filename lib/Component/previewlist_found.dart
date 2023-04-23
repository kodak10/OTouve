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
    return Padding(
      
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: founds.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ElevatedButton(
           style: ElevatedButton.styleFrom(
              
                   backgroundColor: const Color.fromARGB(255, 255, 255, 255), //background color of button
                  //side: BorderSide(width:3, color:Colors.brown), //border width and color
                 // elevation: 3, //elevation of button
                  // shape: RoundedRectangleBorder( //to set border radius to button
                  //     borderRadius: BorderRadius.circular(30)
                  // ),
                  
                  padding: EdgeInsets.all(20) //content padding inside button
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
                height: 300,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                 boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(57, 158, 158, 158).withOpacity(0.5),
                          spreadRadius: 5,
                          
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                  
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.transparent),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'images/found/${founds[index].foundImage}',
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
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 3),
                                  child: Row(children: [
                                    Text(
                                      founds[index].foundID,
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
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 3),
                                  child: Row(children: [
                                    Text(
                                      founds[index].foundType,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        backgroundColor:
                                            Color.fromARGB(19, 109, 9, 34),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 248, 248, 248),
                                      ),
                                    ),
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
          // return Container(

          //   height: 401,
          //   padding: const EdgeInsets.all(16),
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(14),
          //       color: Colors.transparent),

          //   child: Row(
          //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Expanded(

          //         child: Column(

          //           children: [

          //             Container(

          //               height: 180,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(12),
          //                 image: DecorationImage(
          //                   fit: BoxFit.cover,
          //                   image: AssetImage(
          //                     'images/found/${founds[index].foundImage}',
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             const SizedBox(
          //               width: 18.56,
          //             ),
          //             Expanded(
          //               child: Column(

          //                 children: [
          //                   Container(
          //                     margin: const EdgeInsets.symmetric(vertical: 3),
          //                     child:
          //                         Row(
          //                          children: [
          //                             Text(
          //                               founds[index].foundID,
          //                               overflow: TextOverflow.ellipsis,
          //                               maxLines: 1,
          //                               style: const TextStyle(
          //                                 fontSize: 14,
          //                                 fontWeight: FontWeight.w500,
          //                                 color: Color.fromARGB(255, 41, 41, 41),
          //                               ),
          //                             )

          //                         ]
          //                       ),

          //                   ),
          //                    Container(
          //                     child:
          //                         Row(
          //                          children: [
          //                             Text(
          //                               founds[index].foundName,
          //                               overflow: TextOverflow.ellipsis,
          //                               maxLines: 1,
          //                               style: const TextStyle(
          //                                 fontSize: 21,
          //                                 fontWeight: FontWeight.w700,
          //                                 color: Color.fromARGB(255, 0, 0, 0),
          //                               ),
          //                             )

          //                         ]
          //                       ),

          //                   ),
          //                    Container(
          //                     margin: const EdgeInsets.symmetric(vertical: 3),
          //                     child:
          //                         Row(
          //                           children: [
          //                             Text(
          //                               founds[index].foundType,
          //                               overflow: TextOverflow.ellipsis,
          //                               maxLines: 1,
          //                               style: const TextStyle(
          //                                 backgroundColor: Color.fromARGB(19, 109, 9, 34),
          //                                 fontSize: 14,
          //                                 fontWeight: FontWeight.w500,
          //                                 color: Color.fromARGB(255, 248, 248, 248),
          //                               ),
          //                             ),
          //                             Text(
          //                               founds[index].foundDate,
          //                               overflow: TextOverflow.ellipsis,
          //                               maxLines: 1,
          //                               style: const TextStyle(
          //                                 fontSize: 14,
          //                                 fontWeight: FontWeight.w500,
          //                                 color: Color(0xFF0E0E2D),
          //                               ),
          //                             ),

          //                         ]
          //                       ),

          //                   ),

          //                 ],
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // );
        },
      ),
    );
  }
}
