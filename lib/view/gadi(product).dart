import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              margin: const EdgeInsets.only(right: 30),
              child: const Icon(Icons.person))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //yoo container chaii tyoo gadii ko name wala

          Container(
              margin: const EdgeInsets.only(top: 50, left: 30),
              child: const Text(
                "Audi SUV",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),

          // yo container chai gadi ko picture ko lagii

          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 250,
            // width: 345,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.amber),
          ),


          // yo container chaii gadi ko details ko lagiii

          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 197, 194, 194),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50)
              )
            ),

            // yo container chaii text ko lagiiii

            child: Container(
              margin: const EdgeInsets.only(top: 30, left: 30),
              child: const Text("Overview"),
            ),
          ),
          // BottomNavigationBar(
          //   items:<BottomNavigationBarItem>[
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.home))
          //   ]
            
          //   )

          Container(
            height: 79.3,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 7
                )
              ],
              color: Color.fromARGB(255, 245, 245, 245),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Rs. 1500",
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
                const Text(" /Day",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 169, 169, 169)
                ),),

                Container(
                  margin: EdgeInsets.only(left: 110),
                  
                  height: 50,
                  width: 120,
                  child: ElevatedButton(onPressed: (){
                
                  }, child: Text("Rent Now")),
                )
              ],
            ),
          )
          
        

        ],

      ),
    );
  }
}
