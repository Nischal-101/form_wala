import 'package:flutter/material.dart';
import 'package:form_wala/view/bookingDetails.dart';
import 'package:form_wala/view/gadi(product).dart';
import 'package:form_wala/view/login_screen.dart';

class NewLogInScreen extends StatelessWidget {
  NewLogInScreen({super.key});

  final keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.4,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  // image: DecorationImage(image: AssetImage("assets/ssssss.jpg"),
                  // fit: BoxFit.fill)
                ),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30, left: 30),
                  child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                key: keys,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 32, top: 30),
                      child: const Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 48, 48, 48)),
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 30, top: 5),
                    width: 350,
                    child: TextFormField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 207, 203, 203)),
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 161, 155, 155)),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: ("Enter your email")),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 32, top: 30),
                      child: const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 48, 48, 48)),
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 30, top: 5),
                    width: 350,
                    child: TextFormField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 207, 203, 203)),
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 161, 155, 155)),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: ("Enter your password")),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 40),
                    child: Row(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: const Text(
                              "Remember me",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 118, 118, 118)),
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 83),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Forget password?",
                                style: TextStyle(color: Colors.red),
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, top: 20),
                    // width: MediaQuery.of(context).size.height/2,
                    width: 350,
                    height: 55,
                    child: ElevatedButton(
                        onPressed: () async {
                          if (keys.currentState!.validate()) {}
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 0, 0)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 5, left: 100),
                      child: Row(
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 12),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Product();
                                }));
                              },
                              child: const Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
