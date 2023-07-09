import 'package:flutter/material.dart';

class FoodOrder extends StatelessWidget {
  const FoodOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),

      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image.asset("assets/steak.jpg"),
              Container(
                margin: const EdgeInsets.only(left: 160, bottom: 10),
                child: const Text(
                  "Orders",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              const WholeContainer(amount: 'Rs 2000', date: 'Jan 24, 2023-8:30 pm', deliveryStatus: 'Delivered', name: 'Steak', quantity: '(2 kg)',),
              const WholeContainer(amount: 'Rs 1000', date: 'Jan 2, 2023-8:30 pm', deliveryStatus: 'Delivered', name: 'Banana', quantity: '(2 kg)',),
              const WholeContainer(amount: 'Rs 4000', date: 'Jan 14, 2023-8:30 pm', deliveryStatus: 'Delivered', name: 'Apple', quantity: '(3 kg)',),
              const WholeContainer(amount: 'Rs 200', date: 'Feb 2, 2023-8:30 pm', deliveryStatus: 'Cancelled', name: 'Orange', quantity: '(4 kg)',),

             
            ],
          ),
        ),
      ),
    );
  }
}

class WholeContainer extends StatelessWidget {
  const WholeContainer({
    super.key,
    required this.name,
    required this.quantity,
    required this.date,
    required this.amount,
    required this.deliveryStatus,
  });

  final String name;
  final String quantity;
  final String date;
  final String amount;
  final String deliveryStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30, top: 20),
            height: 120,
            width: 350,
            // color: Colors.amber,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.1)),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/steak.jpg"),
                          fit: BoxFit.fill),
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              name,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 2, top: 20),
                            child: Text(
                              quantity,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 130, 130, 130)),
                            ))
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20, top: 10),
                        child:  Text(
                          date,
                          style: const TextStyle(
                              // fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Color.fromARGB(255, 130, 130, 130)),
                        )),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            child: const Text(
                              "Paid:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 130, 130, 130)
                                  // fontWeight: FontWeight.w300
                                  ),
                            )),
                        Container(
                            margin: const EdgeInsets.only(top: 10, left: 3),
                            child: Text(
                              amount,
                              style: const TextStyle(color: Colors.red),
                            )),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 45),
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, top: 3),
                            child: Text(
                              deliveryStatus,
                              style:
                                  const TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
