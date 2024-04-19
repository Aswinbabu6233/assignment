import 'package:demo/screens/home.dart';
import 'package:demo/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String uname = "Aswin@123";
    String pass = "1234567";

    var ucontroller = TextEditingController();
    var passwordcontroller = TextEditingController();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height * 0.38,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight:
                          Radius.elliptical(height * 0.99, width * 0.50),
                      bottomLeft:
                          Radius.elliptical(height * 0.32, width * 0.20)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/image/splashpage.jpg",
                      ))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[900]),
                  ),
                  Text(
                    "Login to your account",
                    style: TextStyle(fontSize: 20, color: Colors.green[900]),
                  ),
                ],
              ),
              Image.asset(
                "assets/image/leaf_1-removebg-preview.png",
                width: 107,
                alignment: Alignment.center,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Email",
                      hintText: 'Enter your email here',
                    ),
                    controller: ucontroller,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Password",
                      hintText: 'Enter your password here',
                      helperText:
                          'Password must contain upper and lowercase letters',
                    ),
                    controller: passwordcontroller,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (uname == ucontroller.text &&
                          pass == passwordcontroller.text) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // ignore: prefer_const_constructors
                                builder: (context) => Home1()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("login failed")));
                      }
                    },
                    color: Colors.green[900],
                    minWidth: 200,
                    shape: const StadiumBorder(),
                    child: const Text("Login"),
                  ),
                  const SizedBox(height: 10), // Adjusted spacer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have an account?"),
                      TextButton(onPressed: () {}, child: Text("Sign up")),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
