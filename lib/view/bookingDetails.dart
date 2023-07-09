import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          "Booking Details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 40),

        //yo chaii tyooo whole container

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 2,
                      // offset: Offset(5, 5)
                    )
                  ],
                  // border: Border.all(width: 0.5)
                  ),

              // container vitra ko components haruu

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //yo chai  summary ko lagii

                  Container(
                    margin: const EdgeInsets.only(left: 17, top: 15),
                    child: const Text(
                      "Summary",
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),
                    ),
                  ),

                  // Gadi ko image ko lagiiii

                  Container(
                    margin: const EdgeInsets.only(left: 13, top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 130,
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/2024-audi-q7-102-6495edad98657-removebg-preview.png"))
                          ),
                        ),

                        // gdai ko details haru ko lagiiii

                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 100,
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // gadi lo name

                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Text(
                                  "Audi SUV",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),

                              // yo container chaaiii spped ko lagii

                              Container(
                                margin: const EdgeInsets.only(top: 5, left: 10),
                                child: const Text(
                                  "7 Seat V8 Disel - 11 kmph",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 138, 138, 138)),
                                ),
                              ),

                              // yo row chai location ko

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 7, top: 5),
                                    child: const Icon(
                                      FontAwesomeIcons.locationPin,
                                      size: 15,
                                      color: Color.fromARGB(255, 186, 184, 184),
                                    ),
                                  ),
                                  Container(
                                      margin:
                                          const EdgeInsets.only(left: 2, top: 5),
                                      child: const Text(
                                        "Lakeside, pokhara",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Color.fromARGB(255, 138, 138, 138)),
                                      ))
                                ],
                              ),

                              // yo row chaii date ko lagiii

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 7, top: 7),
                                    child: const Icon(
                                      Icons.calendar_month_outlined,
                                      size: 17,
                                      color: Color.fromARGB(255, 186, 184, 184),
                                    ),
                                  ),
                                  
                                  Container(
                                    margin: const EdgeInsets.only(top: 9),
                                    child: const Text(
                                      "14/02/2023-11:00am",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromARGB(255, 138, 138, 138)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  // yo container chai tyoo gadi book garne details ko lagi


                  Container(
                    margin: const EdgeInsets.only(left: 17, top: 10),
                    height: 220,
                    width: 330,
                    // decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              const Text("3 Days"),
                              Container(
                                margin: const EdgeInsets.only(left: 200),
                                child: const Text("Rs 4500.00"))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              const Text("Extra Driver Insurance"),
                              Container(
                                margin:const EdgeInsets.only(left:105) ,
                                child: const Text("Rs 500.00"))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              const Text("VAT Charge"),
                              Container(
                                margin: const EdgeInsets.only(left: 175),
                                child: const Text("Rs 100.00"))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text("----------------------------------------------------------------------------")),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Total Price"),
                              Container(
                                margin: const EdgeInsets.only(left: 173),
                                child: const Text("Rs 5100.00"))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(onPressed: (){
                        
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red
                          ), 
                          
                          child: const Text("Cancel Booking")),
                        )
                      ],
                      
                    ),

                    
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 232, 232),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left:50, top: 10),
                        child: const Icon(Icons.info_outline,
                        size: 17,
                        color: Color.fromARGB(255, 148, 148, 148))),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 2),
                          child: const Text("Please note that you cannot cancel your",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 148, 148, 148)
                          ),)),
                        
                    ],
                    
                  ),
                  Container(
                          margin: const EdgeInsets.only(top: 5,),
                          child: const Text("confirmed booking after 15 minutes of confirmation",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 148, 148, 148)
                          ),))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
