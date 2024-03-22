import 'package:flutter/material.dart';
import 'package:project_free_bunny/productList.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final password1Controller = TextEditingController();
  final password2Controller = TextEditingController();
  bool? isChecked = false;
  bool hiddenPw = true;
  bool hiddenPw_Re = true;
  Color BlacklessOpacity = Colors.black26;
  Color Black = Colors.black;
  Icon hiddenPwIcon = Icon(Icons.visibility_off_rounded);
  Icon ShowPwIcon = Icon(Icons.remove_red_eye);
  Icon IconSet = Icon(Icons.visibility_off_rounded);
  Color ColorSet = Colors.black26;
  Icon IconSet_Re = Icon(Icons.visibility_off_rounded);
  Color ColorSet_Re = Colors.black26;
  Color buttonColorSet = Color.fromARGB(12, 0, 8, 95);
  Color TextColorSet = Colors.white30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 71, 85, 240),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 50),
                child: Center(
                  child: Text(
                    "Sign up for free",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ),
              Text(
                "Name",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: nameController,
                cursorColor: Color.fromARGB(255, 71, 85, 240),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                cursorColor: Color.fromARGB(255, 71, 85, 240),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: password1Controller,
                obscureText: hiddenPw,
                cursorColor: Color.fromARGB(255, 71, 85, 240),
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hiddenPw = !hiddenPw;
                          if (hiddenPw == true) {
                            IconSet = hiddenPwIcon;
                            ColorSet = BlacklessOpacity;
                          } else {
                            IconSet = ShowPwIcon;
                            ColorSet = Black;
                          }
                        });
                      },
                      icon: IconSet,
                      color: ColorSet,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: hiddenPw_Re,
                controller: password2Controller,
                cursorColor: Color.fromARGB(255, 71, 85, 240),
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hiddenPw_Re = !hiddenPw_Re;
                            if (hiddenPw_Re == true) {
                              IconSet_Re = hiddenPwIcon;
                              ColorSet_Re = BlacklessOpacity;
                            } else {
                              IconSet_Re = ShowPwIcon;
                              ColorSet_Re = Black;
                            }
                          });
                        },
                        icon: IconSet_Re,
                        color: ColorSet_Re),
                    // Icon(Icons.remove_red_eye)
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    fillColor: MaterialStatePropertyAll(Colors.white),
                    checkColor: Color.fromARGB(255, 0, 8, 95),
                    side: BorderSide(color: Colors.white),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value;
                        if (isChecked == true &&
                            nameController.text.isNotEmpty &&
                            emailController.text.isNotEmpty &&
                            password1Controller.text.isNotEmpty &&
                            password2Controller.text.isNotEmpty) {
                          buttonColorSet = Color.fromARGB(255, 0, 8, 95);
                          TextColorSet = Colors.white;
                        } else {
                          buttonColorSet = Color.fromARGB(12, 0, 8, 95);
                          TextColorSet = Colors.white30;
                        }
                      });
                    },
                  ),
                  Text(
                    "I agree to ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 198, 113)),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColorSet,
                    foregroundColor: TextColorSet,
                    fixedSize: Size(350, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {
                  if (isChecked == true &&
                      nameController.text.isNotEmpty &&
                      emailController.text.isNotEmpty &&
                      password1Controller.text.isNotEmpty &&
                      password2Controller.text.isNotEmpty &&
                      password1Controller.text == password2Controller.text) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductList(),
                        ),
                        (route) => false);
                  } else if (isChecked == true &&
                      nameController.text.isNotEmpty &&
                      emailController.text.isNotEmpty &&
                      password1Controller.text.isNotEmpty &&
                      password2Controller.text.isNotEmpty &&
                      password1Controller.text != password2Controller.text) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Incorrect Password"),
                        content: Text("Passwords must be same"),
                      ),
                    );
                  }
                },
                child: Text("Get started"),
              )
            ],
          ),
        ));
  }
}
