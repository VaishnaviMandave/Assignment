import 'package:challenge1/cafe.dart';
import 'package:challenge1/dummydata.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: const Color.fromARGB(255, 242, 122, 85)),
            label: "home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: const Color.fromARGB(255, 103, 102, 102),
            ),
            label: "search"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              color: const Color.fromARGB(255, 103, 102, 102),
            ),
            label: "rewards"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: const Color.fromARGB(255, 103, 102, 102),
            ),
            label: "profile"),
      ]),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                color: Colors.black,
                height: 150,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 40),
                      child: Text(
                        "Good morning Walsh!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.search, color: Colors.white),
                    Icon(Icons.notification_add, color: Colors.white)
                  ],
                ),
              ),
              Positioned(
                left: 30,
                top: 35,
                child: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/card.png"))),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/Rewards.png"))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recommended Places",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: places.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Cafe(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 120,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage(places[index]['image']!),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.6),
                                  Colors.transparent
                                ],
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(places[index]['name']!,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  Text(places[index]['location']!,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
