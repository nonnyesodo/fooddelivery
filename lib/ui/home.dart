import 'package:flutter/material.dart';
import 'package:fooddelivery/ui/screenpage.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool isFinished;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 50, right: 50),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Choose One  Of Your \n       Favorite Food',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Gridview(),
              SizedBox(
                height: 60,
              ),
              SwipingButton(
                swipeButtonColor: Colors.white,
                iconColor: Colors.black,
                backgroundColor: Color.fromARGB(255, 12, 47, 77),
                text: "Swipe right to skip...",
                onSwipeCallback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Marketpage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Gridview extends StatelessWidget {
  const Gridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'images/bike.jpeg',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Junk Food'),
            SizedBox(
              height: 60,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'images/bike.jpeg',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Super heat')
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'images/bike.jpeg',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Oriantal food'),
            SizedBox(
              height: 60,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'images/bike.jpeg',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Dessert')
          ],
        ),
      ],
    );
  }
}
