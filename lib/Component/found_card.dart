import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:otrouve/model/found.dart';


class FoundCard extends StatelessWidget {
  const FoundCard({Key? key, this.active, this.index, this.found})
      : super(key: key);

  final bool? active;
  final int? index;
  final Found? found;

  @override
  Widget build(BuildContext context) {
    final double blur = active! ? 16 : 0;
    final double offset = active! ? 4 : 0;
    final double top = active! ? 0 : 46;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        bottom: 0,
        right: 15.5,
        left: active! ? 32.5 : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.1),
            blurRadius: blur,
            offset: Offset(0, offset),
          )
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/found/${found!.foundImage}'),
        ),
      ),
      child: Stack(
        children: [
          Container(
           
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 16,
                top: 10,
              ),
              height: 87,
             
              child: Text(
                found!.foundName,
                
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
