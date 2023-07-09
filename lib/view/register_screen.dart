import 'package:flutter/material.dart';
import 'package:form_wala/view/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      // ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 90, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 6),
                child: const Text("New Account",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 2, 61, 109)
                ),),
              )
              ,const Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Text("Let's start with creating an account"),
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // first ko full name wala suru 
                     const Padding(
                       padding: EdgeInsets.only(bottom: 10, left: 2),
                       child: Text("Full Name"),
                     ) 
                    ,SizedBox(
                    width: 315,
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.amber,
                      ),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: Color.fromARGB(255, 96, 96, 96)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        hintText: ("Enter your full name"),
                        hintStyle: TextStyle(
                          fontSize: 16,  
                        )
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                  ),
      
                  // email address wala suru vayoo
                  Container(
                    margin: const EdgeInsets.only(top: 15, left: 2, bottom: 10),
                    child: const Text("Email Address")) 
      
                    ,SizedBox(
                    width: 315,
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.amber,
                      ),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: Color.fromARGB(255, 96, 96, 96)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        hintText: ("Enter your email address.."),
                        hintStyle: TextStyle(
                          fontSize: 16,  
                        )
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                  ),
      
                  // Phone number wala suru vayoo
                  Container(
                    margin: const EdgeInsets.only(top: 15, left: 2, bottom: 10),
                    child: const Text("Phone Number")) 
                    ,SizedBox(
                    width: 315,
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.amber,
                      ),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: Color.fromARGB(255, 96, 96, 96)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        hintText: ("Enter your phone number"),
                        hintStyle: TextStyle(
                          fontSize: 16,  
                        )
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                  ),
      
                  // password  wala suru
                  Container(
                    margin: const EdgeInsets.only(top: 15, left: 2, bottom: 10, ),
                    child: const Text("Password")) 
                    ,SizedBox(
                      
                    width: 315,
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.amber,
                      ),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: Color.fromARGB(255, 96, 96, 96)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        hintText: ("Enter your password"),
                        hintStyle: TextStyle(
                          fontSize: 16,  
                        )
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
        
              )),
      
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  // width: MediaQuery.of(context).size.height/2,
                  width: 314,
                  height: 55,
                  child: ElevatedButton(
                    
                      onPressed: () async {
                        if (keys.currentState!.validate()) {}
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 2, 61, 109)
                      ),
                      child: const Text("Create Account",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),)),
                ),
              ),
      
              // Already have an account walaaa
              Container(
                margin: const EdgeInsets.only(top: 15, left: 50),
                child: Row(
                  children: [
                    const Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 12
                    ),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginScreen();
                      }));
                    }, child: const Text("Log in", 
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 11, 101, 174)
                    ),))
                  ],
                ))
            ],
          ),
        ),
      ),
    );
  }
}