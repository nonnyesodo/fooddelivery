import 'package:flutter/material.dart';

import '../util/button.dart';
import 'map.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 80),
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70.0, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Great!',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Text(
                          'Payment Success',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                        SizedBox(
                          height: 50,
                        ),
                        Pdetail(),
                        Spacer(),
                        Center(child: Text('Total pay')),
                        SizedBox(height: 5),
                        Center(
                            child: Text(
                          '\$51.50',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ))
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.red,
                      child: Center(
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 80,
                        ),
                      ),
                    )),
              ]),
              Spacer(),
              Button(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Mapscreen(),
                    ),
                  );
                },
                colour: Color.fromARGB(255, 3, 20, 35),
                labelt: 'View map',
                tcolor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pdetail extends StatelessWidget {
  const Pdetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 40,
        right: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Form bank'),
              SizedBox(
                height: 15,
              ),
              Text('Pay'),
              SizedBox(
                height: 15,
              ),
              Text('Administration'),
              SizedBox(
                height: 15,
              ),
              Text('Pay Date'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'VISA',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '\$14.00',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '\$1.5',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Fab 10,2022',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
