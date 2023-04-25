import 'package:flutter/material.dart';

import 'package:fooddelivery/util/button.dart';

import 'Cart.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage('images/bike.jpeg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Card(
                        child: Icon(Icons.arrow_back),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Cart(),
                            ),
                          );
                        },
                        child: Card(
                          child: Icon(Icons.shopping_cart_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Milky Cheese Burger',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text('4.3 (342 Reviews)',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        Card(
                          color: Color.fromARGB(255, 216, 206, 206),
                          child: Row(
                            children: [
                              Icon(Icons.remove),
                              SizedBox(
                                width: 5,
                              ),
                              Text('1'),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.add),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Milkey cheese burger is avery great and tasty\n burger healthy and nutrious....'
                      'Read more',
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      'Ingredients',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Card(
                            child: Image(
                              image: AssetImage('images/bike.jpeg'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Card(
                            child: Image(
                              image: AssetImage('images/bike.jpeg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text('\$15.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                    color: Colors.red))
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
                                  builder: (context) => const Cart(),
                                ),
                              );
                            },
                            colour: Color.fromARGB(255, 3, 20, 35),
                            labelt: '+ Add to cart',
                            tcolor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
