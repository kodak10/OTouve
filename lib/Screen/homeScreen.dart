import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              
              padding: const EdgeInsets.symmetric(
                vertical: 40.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("images/user.jpg"),
                  ),
                  
                  RichText(
                    text: const TextSpan(
                      text: "O'TROUVE",
                      style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold,)
                      
                      
                      
                    ),

                  ),
                  const Icon(
                    Icons.filter_alt_off_outlined,
                    color: Colors.black,
                    size: 24.0,
                  )
                ]
              ),
            ),

          
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 30,
              ),
              child: Column(
                children:[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        "images/image_1.png",
                        width: 300,
                        height: 150,
                        fit:BoxFit.fill  
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                      text: "Retrouver vos objets perdus deviennent plus facile",     
                      style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold,)                           
                      )     
                    ),
                ],
               
              ),
            ),



            Padding(
              
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 30,
              ),
              child: Column(
                
                children:  [
                  
                    ClipRRect(
                      
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        
                      ),
                      
                      child: Image.asset(
                        "images/image_2.jpg",
                        width: 300,
                        height: 150,
                        fit:BoxFit.fill  

                      ),
                      
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                      text: "J'ai Perdu / J'ai retrouvé",  
                      style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold,)                              
                      )     
                    ),
                ],
               
              ),
            ),


            Padding(
              
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 30,
              ),
              child: Column(
                
                children:  [
                  
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                        "images/image_3.jpg",
                        width: 300,
                        height: 150,
                        fit:BoxFit.fill  

                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                      text: "Objets trouvés",         
                      style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold,)                       
                      )     
                    ),
                ],
               
              ),
            ),


          ],
         
        )
        
       )
    );
  }
                 
}