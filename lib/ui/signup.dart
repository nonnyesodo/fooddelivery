import 'package:flutter/material.dart';
import 'package:fooddelivery/ui/login.dart';
import '../util/button.dart';
import '../util/ktextfield.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 70.0,
        left: 15.0,
        right: 15.0,
        bottom: 15.0,
      ),
      child: ListView(
        children: [
          const Text(
            'Hello Again!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromARGB(255, 2, 13, 23),
            ),
          ),
          const SizedBox(height: 10),
          const Text('see the list of likes of your food to order'),
          const SizedBox(height: 60),
          const Text('Email*'),
          const SizedBox(height: 10),
          const TextField(decoration: ktextfield),
          const SizedBox(
            height: 20,
          ),
          const Text('Password*'),
          const SizedBox(height: 10),
          TextField(
            decoration: ktextfield.copyWith(
                hintText: 'Enter password',
                prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Checkbox(value: false, onChanged: null),
              Text('Remember me'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Button(
            colour: const Color.fromARGB(255, 1, 11, 19),
            ontap: () {},
            labelt: 'Sign Up',
            tcolor: Colors.white,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              InkWell(
                onTap: () {
                  summit();
                },
                child: const Text(
                  ' Login',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 13, 21),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  summit() {
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
      builder: (context) => const Login(),
    );
  }
}
