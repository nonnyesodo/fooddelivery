import 'package:flutter/material.dart';
import 'package:fooddelivery/util/button.dart';

class Mapscreen extends StatefulWidget {
  const Mapscreen({super.key});

  @override
  State<Mapscreen> createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('images/bike.jpeg'),
                        fit: BoxFit.cover),
                  ),
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: Card(
                      color: Colors.red,
                      child: Row(
                        children: [
                          Icon(Icons.location_pin),
                          Text('Surakarta,INA')
                        ],
                      ),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Card(
                              child: Image(
                                image: AssetImage('images/bike.jpeg'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Ronald Reymond'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('25 minutes on the way')
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 320,
                            child: Button(
                                ontap: () {},
                                labelt: 'message',
                                colour: Colors.red,
                                tcolor: Colors.white),
                          ),
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                                color: Color.fromARGB(255, 3, 30, 52),
                                child: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
