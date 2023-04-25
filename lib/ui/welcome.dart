import 'package:flutter/material.dart';
import 'package:fooddelivery/ui/signup.dart';

import '../util/button.dart';
import 'login.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 9, 15),
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0, left: 25, right: 25),
        child: SafeArea(
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/bike.jpeg'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '  The Experience Of\nBuying Food Quickly',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'The Experience Of Buying Food Quickly',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Button(
                labelt: 'Sign Up',
                ontap: () {
                  summit(const Signup());
                },
                colour: Colors.deepOrange,
                tcolor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              Button(
                labelt: 'Login',
                ontap: () {
                  summit(const Login());
                },
                colour: Colors.white,
                tcolor: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }

  summit(Widget login) {
    showModalBottomSheet(
      constraints: BoxConstraints.loose(
        Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.90,
        ),
      ),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      context: context,
      builder: (context) => login,
    );
  }
}
