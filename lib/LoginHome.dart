import 'package:flutter/material.dart';
import 'package:project_free_bunny/SignUp.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({super.key});

  @override
  State<LoginHome> createState() => LloginHomeState();
}

class LloginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 71, 85, 240),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Image.asset("Asset/img/FreeBunny.png"),
              ),
              SizedBox(
                height: 330,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(400, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {},
                child: Text("Login"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 8, 95),
                    foregroundColor: Colors.white,
                    fixedSize: Size(400, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ));
                },
                child: Text("Get started"),
              )
            ],
          ),
        ));
  }
}
