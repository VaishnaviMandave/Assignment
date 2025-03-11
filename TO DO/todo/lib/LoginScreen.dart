import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController name = TextEditingController();
  List names = [];
  Color aa = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 270,
                width: double.infinity,
                color: Color(0xaa50C2C9),
              ),
              Positioned(
                child: Column(children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 200,
                      ),
                      Positioned(
                          bottom: 100,
                          child: CircleAvatar(
                              radius: 100,
                              backgroundColor:
                                  Color.fromARGB(246, 218, 246, 243))),
                      Positioned(
                          right: 250,
                          child: CircleAvatar(
                              radius: 100,
                              backgroundColor:
                                  Color.fromARGB(246, 224, 248, 246))),
                      Positioned(
                        top: 135,
                        left: 140,
                        child: Container(
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("assets/Ellipse.png"),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 228,
                          left: 88,
                          child: Text(
                            "Welcome Vaishnavi",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ))
                    ],
                  )
                ]),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220),
              child: Text(
                "Good Morning",
                style: TextStyle(fontSize: 16.3),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 120,
              width: 110,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/clock.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 248),
              child: Text(
                "Task List",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 300,
              width: 333,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10, top: 1),
                          child: Container(
                            width: 270,
                            height: 30,
                            color: Color(0xaaEDD7D7),
                            child: TextField(
                                controller: name,
                                decoration: InputDecoration(
                                  fillColor: Color(0xaaEDD7D7),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                )),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (name.text.isNotEmpty) {
                                  names.add(name.text);
                                }
                                name.text = "";
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              size: 37,
                              color: Color.fromARGB(170, 95, 245, 253),
                            )),
                      )
                    ],
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: names.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        names.removeAt(index);
                                      });
                                    },
                                    child: Container(
                                      height: 17,
                                      width: 17,
                                      child: Center(
                                        child: Icon(
                                          Icons.done,
                                          size: 15,
                                          color: Colors.cyan,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: aa,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                  height: 40,
                                ),
                                Container(
                                  height: 18,
                                  width: 160,
                                  child: Text("${names[index]}"),
                                )
                              ],
                            );
                          }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
