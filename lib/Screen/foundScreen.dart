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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("images/user.jpg"),
                ),
                RichText(
                  text: const TextSpan(
                      text: "Objets trouvés",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
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

            //recherche
              Container(
                height: 40,
                  margin: const EdgeInsets.all(20),                        
                  child: Row(
                    
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                            // Zone de texte
                    const Expanded(
                      
                      
                      child: TextField(
                        
                        
                        decoration: InputDecoration(    
                          
                          
                          hintText: 'Rechercher...',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                            // Bouton de recherche
                    ElevatedButton(
                      
                      
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        
                        backgroundColor: Colors.greenAccent.shade700,
                      ),
                      child: const Icon(Icons.search, color: Color.fromARGB(255, 255, 255, 255), size: 25,),
                      ),
                  ],
                  ),
              ),
            //filtre
            Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                const Text('Filtre : ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                // Boutons de filtre
                ElevatedButton(
                  
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent.shade700,
                  ),
                  child: const Text('Tout',),
                ),
                ElevatedButton(
                  onPressed: () {},
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text('CNI'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text('Passport'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text('Permis'),
                ),
                
              ],
            ),
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
