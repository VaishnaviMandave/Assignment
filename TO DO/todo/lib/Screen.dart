import 'package:flutter/material.dart';
import 'package:todo/LoginScreen.dart';

class Screen extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: formkey,
        child: Column(
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
            ), // 1 ,st task
            SizedBox(
              height: 40,
            ),
            Text(
              "Welcome back",
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 145,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/school.png"))),
              ),
            ),
            SizedBox(
              height: 60,
            ),

            Container(
                height: 50,
                width: 300,
                color: Colors.white54,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                  validator: (name) {
                    if (name != "Vaishnavi") {
                      return "invalid username";
                    }
                  },
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 47,
                width: 300,
                color: Colors.white54,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                  validator: (pass) {
                    if (pass != "1410") {
                      return "invalid Passworld";
                    }
                    ;
                  },
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Forget Passeorld ?",
              style: TextStyle(fontSize: 12.7, color: Color(0xaa50C2C9)),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginscreen()));
                }
              },
              child: Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(211, 54, 228, 237),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account?"),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Sign UP",
                  style: TextStyle(color: Color(0xaa50C2C9)),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
