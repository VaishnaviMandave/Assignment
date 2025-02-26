import 'package:challenge1/homepage.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Homescreen();
  }
}

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(clipBehavior: Clip.none, children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/6612705/pexels-photo-6612705.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 40,
              right: 40,
              left: 30,
              child: Column(
                children: [
                  Container(
                      height: 50,
                      width: double.infinity,
                      child: Text("Enjoy Your Coffee Breaks",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))),
                  Text(
                      "Coffee breaks are about more than just caffeine - they're moments of connection, relaxation, and enjoyment.",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 13, 13, 13),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 210, 128, 77),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                        },
                        child: Text(
                          "Start Now",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
