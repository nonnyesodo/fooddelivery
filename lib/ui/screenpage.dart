// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fooddelivery/ui/detailscreen.dart';

enum Button {
  recomended,
  junckfood,
  vegan,
  bread,
  coffee,
  delicacy,
  meat,
  porridge
}

const activeBcolor = Colors.red;
const activetcolor = Colors.white;
const unactiveBcolor = Colors.grey;
const unactivetcolor = Colors.black;

class Marketpage extends StatefulWidget {
  const Marketpage({super.key});

  @override
  State<Marketpage> createState() => _MarketpageState();
}

class _MarketpageState extends State<Marketpage> {
  late Button selectedbutton;
  @override
  void initState() {
    super.initState();
    selectedbutton = Button.recomended;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
                Column(
                  children: [
                    const Text('Location'),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_pin,
                          color: Colors.orange,
                          size: 16,
                        ),
                        Text(
                          'Surakarta, INA',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined),
                ),
              ],
            ),
            Tocontainer(),
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Buttonr(
                    text: 'Recommended',
                    ontap: () {
                      setState(() {
                        selectedbutton = Button.recomended;
                      });
                    },
                    bcolor: selectedbutton == Button.recomended
                        ? activeBcolor
                        : unactiveBcolor,
                    tcolor: selectedbutton == Button.recomended
                        ? activetcolor
                        : unactivetcolor,
                  ),
                  Buttonr(
                    text: 'Junk food',
                    ontap: () {
                      setState(() {
                        selectedbutton = Button.junckfood;
                      });
                    },
                    bcolor: selectedbutton == Button.junckfood
                        ? activeBcolor
                        : unactiveBcolor,
                    tcolor: selectedbutton == Button.junckfood
                        ? activetcolor
                        : unactivetcolor,
                  ),
                  Buttonr(
                    text: 'Vegan',
                    ontap: () {
                      setState(() {
                        selectedbutton = Button.vegan;
                      });
                    },
                    bcolor: selectedbutton == Button.vegan
                        ? activeBcolor
                        : unactiveBcolor,
                    tcolor: selectedbutton == Button.vegan
                        ? activetcolor
                        : unactivetcolor,
                  ),
                  Buttonr(
                    text: 'Bread',
                    ontap: () {
                      setState(() {
                        selectedbutton = Button.bread;
                      });
                    },
                    bcolor: selectedbutton == Button.bread
                        ? activeBcolor
                        : unactiveBcolor,
                    tcolor: selectedbutton == Button.bread
                        ? activetcolor
                        : unactivetcolor,
                  ),
                  Buttonr(
                    text: 'Coffee',
                    ontap: () {
                      setState(() {
                        selectedbutton = Button.coffee;
                      });
                    },
                    bcolor: selectedbutton == Button.coffee
                        ? activeBcolor
                        : unactiveBcolor,
                    tcolor: selectedbutton == Button.coffee
                        ? activetcolor
                        : unactivetcolor,
                  ),
                  Buttonr(
                    text: 'Delicacy',
                    ontap: () {
                      setState(() {
                        selectedbutton = Button.delicacy;
                      });
                    },
                    bcolor: selectedbutton == Button.delicacy
                        ? activeBcolor
                        : unactiveBcolor,
                    tcolor: selectedbutton == Button.delicacy
                        ? activetcolor
                        : unactivetcolor,
                  ),
                  Buttonr(
                    text: 'Meat',
                    ontap: () {
                      setState(() {
                        selectedbutton = Button.meat;
                      });
                    },
                    bcolor: selectedbutton == Button.meat
                        ? activeBcolor
                        : unactiveBcolor,
                    tcolor: selectedbutton == Button.meat
                        ? activetcolor
                        : unactivetcolor,
                  ),
                  Buttonr(
                    text: 'Porridge',
                    ontap: () {
                      setState(() {
                        selectedbutton = Button.porridge;
                      });
                    },
                    tcolor: selectedbutton == Button.porridge
                        ? activetcolor
                        : unactivetcolor,
                    bcolor: selectedbutton == Button.porridge
                        ? activeBcolor
                        : unactiveBcolor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Foodcontainer(),
                  Foodcontainer(),
                  Foodcontainer(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Near you!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('See map'),
              ],
            ),
            Expanded(
                child: ListView(scrollDirection: Axis.vertical, children: [
              Foodcontainer(),
            ])),
          ],
        ),
      ),
    );
  }
}

class Foodcontainer extends StatelessWidget {
  const Foodcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 15.0, left: 15, bottom: 25, right: 15),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              image: AssetImage('images/bike.jpeg'), fit: BoxFit.cover),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Buttonr(
            text: 'Meat',
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Detailscreen(),
                ),
              );
            },
            bcolor: Colors.red,
            tcolor: Colors.white,
          ),
          Text(
            'milky Cheese \nBurger',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Text(
                '15 min/1 Serving',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Icon(Icons.favorite)
            ],
          )
        ]),
      ),
    );
  }
}

class Buttonr extends StatelessWidget {
  String text;
  VoidCallback ontap;
  Color bcolor;
  Color tcolor;

  Buttonr({
    Key? key,
    required this.text,
    required this.ontap,
    required this.bcolor,
    required this.tcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: bcolor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: tcolor,
              ),
            )),
          ),
        ),
      ),
    );
  }
}

class Tocontainer extends StatelessWidget {
  const Tocontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
            image: AssetImage('images/bike.jpeg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), //<-- SEE HERE
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hei,Granger!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('You\'ve 23 discount ticket')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
