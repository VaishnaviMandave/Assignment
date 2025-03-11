import 'package:flutter/material.dart';
import 'package:todo/Screen.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
            ),
            Positioned(
                bottom: 100,
                child: CircleAvatar(
                    radius: 100, backgroundColor: Color(0xaa8FE1D7))),
            Positioned(
                right: 250,
                child: CircleAvatar(
                    radius: 100, backgroundColor: Color(0xaa8FE1D7)))
          ],
        ), // 1 st task
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            height: 194,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/home.png"))),
          ),
        ),
        SizedBox(
          height: 28,
        ),
        Text(
          "Gets things with TODs",
          style: TextStyle(fontSize: 23),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 40),
          child: Text(
            "Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed and i think that this will help you a lot",
            style: TextStyle(fontSize: 13),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, (MaterialPageRoute(builder: (context) => Screen())));
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: 60,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(239, 36, 204, 212),
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
