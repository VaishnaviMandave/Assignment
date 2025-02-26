import 'package:challenge1/cafedata.dart';
import 'package:challenge1/transation.dart';
import 'package:flutter/material.dart';

class Cafe extends StatelessWidget {
  const Cafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Homescreen();
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text("Brew Haven",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          Text(
              "Jl. Ngurah Rai No.95, Banjar Anyar, Kec. Kediri, Kabupaten Tabanan, Bali 82113",
              style: TextStyle(
                  fontSize: 14, color: const Color.fromARGB(255, 54, 53, 53))),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "About",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("Menu",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text("Review",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: Text("Hot Drinks",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Coffee.png"))),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Count",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  Text("IDR 65.000",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Transation()));
                },
                child: Center(
                  child: Text("Order",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
