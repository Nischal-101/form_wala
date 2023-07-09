import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            children: [
              Container(
                height: 120,
                width: 370,
                color: const Color.fromARGB(255, 255, 203, 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 20, left: 10),
                        child: const Text(
                          "Title:",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                        margin: const EdgeInsets.only(left: 10, top: 20),
                        child: const Text(
                          "Status:",
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Form(
                      child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 185, 184, 182)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 50, left: 30, right: 30),
                        child: SizedBox(
                            width: double.infinity,
                            // height: 10,
                            child: TextFormField(
                                style: const TextStyle(
                                  color: Colors.amber,
                                ),
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 96, 96, 96)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                          hintText: ("Title")
                                ))),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 30, right: 30),
                        child: SizedBox(
                            width: double.infinity,
                            // height: 10,
                            child: TextFormField(
                                style: const TextStyle(
                                  color: Colors.amber,
                                ),
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 96, 96, 96)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                          hintText: ("Status")
                                ))),
                      ),
                      ElevatedButton(onPressed: (){

                      }, child: const Text("Add"))
                    ],
                  )));
        },
        backgroundColor: const Color.fromARGB(255, 61, 106, 220),
        child: const Icon(Icons.add),
      ),
    );
  }
}
