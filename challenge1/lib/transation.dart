import 'package:flutter/material.dart';

class Transation extends StatelessWidget {
  Transation({super.key});

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
        title: Text("Order",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/Address.png"))),
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Notes.png"))),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/Shopping.png"))),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/Payment.png"))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFC67C4E),
              padding: EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () {},
            child: Center(
              child: Text("Order Now",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
