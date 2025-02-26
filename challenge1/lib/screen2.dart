import 'package:challenge1/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
                      "https://images.pexels.com/photos/3785410/pexels-photo-3785410.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
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
                      child: Text("Organize Coffee Meetups",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))),
                  Text(
                      "Set the date, time, and location, and watch as others join in to share the joy of a good cup of coffee and great conversations.",
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
                                  builder: (context) => Screen3()));
                        },
                        child: Text(
                          "Next",
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
