
import 'package:flutter/material.dart';
import 'package:fooddelivery/ui/payment.dart';

import '../util/button.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Card(
                      child: Icon(
                        Icons.arrow_back,
                        size: 35,
                      ),
                    ),
                    Text(
                      'Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Card(
                        child: Icon(
                      Icons.more_horiz,
                      size: 35,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 233, 228, 228),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Checkbox(value: false, onChanged: null),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('images/bike.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Junk food'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Burger mac Beff',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$15.00',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price'),
                        Text(
                          '\$55.00',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      width: 140,
                      child: Button(
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Payment(),
                            ),
                          );
                        },
                        colour: Color.fromARGB(255, 3, 20, 35),
                        labelt: 'Check Out',
                        tcolor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
