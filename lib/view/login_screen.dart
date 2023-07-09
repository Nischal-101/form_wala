import 'package:flutter/material.dart';
import 'package:form_wala/view/bookingDetails.dart';
import 'package:form_wala/view/register_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //whole ko container
          margin: const EdgeInsets.only(top: 110, left: 50),
          child: Column(
            //
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 60),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 2, 61, 109)),
                  )),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                key: keys,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 3),
                    child: Text("Email address"),
                  ),
                  SizedBox(
                    width: 315,
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.amber,
                      ),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 96, 96, 96)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        hintText: ("Enter your email address.."),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                  ),

                  // password wala section
                  Container(
                    margin: const EdgeInsets.only(top: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 3),
                          child: Text("Password"),
                        ),
                        SizedBox(
                          width: 315,
                          child: TextFormField(
                            style: const TextStyle(
                              color: Colors.amber,
                            ),
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Color.fromARGB(255, 96, 96, 96)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              hintText: ("Enter your password"),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),

              // forget password
              Container(
                margin: const EdgeInsets.only(right: 36, top: 5, bottom: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget password?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 61, 109)),
                          ))
                    ],
                  ),
                ),
              )
              // TextButton(onPressed: (){}, child: Text("Forget password"))

              ,
              SizedBox(
                // width: MediaQuery.of(context).size.height/2,
                width: 314,
                height: 55,
                child: ElevatedButton(
                    onPressed: () async {
                      Get.to(() => BookingDetails());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 2, 61, 109)),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 15, left: 50),
                  child: Row(
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 12),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return RegisterScreen();
                            }));
                          },
                          child: const Text(
                            "Create one",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 37, 113, 174)),
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    ); //forget password ko lagi text button use garne teslai align vanne ma wrap garne ani align center right garneee
  }
}
