import 'package:flutter/material.dart';
import 'package:fooddelivery/ui/paymentsucces.dart';

import '../util/button.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    'Payment',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Card(
                      child: Icon(
                    Icons.more_horiz,
                    size: 35,
                  )),
                ],
              ),
              Pcard(text: 'VISA'),
              Pcard(text: 'OVO'),
              Pcard(text: 'GO PAY'),
              Spacer(),
              Button(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Payments(),
                    ),
                  );
                },
                colour: Color.fromARGB(255, 3, 20, 35),
                labelt: 'Confirm',
                tcolor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pcard extends StatelessWidget {
  final String text;
  const Pcard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 220, 213, 213),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '5778 46667 4787 *******',
            ),
          ],
        ),
      ),
    );
  }
}
