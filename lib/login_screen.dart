import 'package:flutter/material.dart';
import 'package:realestate/onbording_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                //logo
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CircleAvatar(
                      radius: MediaQuery.sizeOf(context).height * 0.10,
                      backgroundImage: AssetImage('assets/images/icon.jpg'))
                ]),
                //app name
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome To Real Easte",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.sizeOf(context).height * 0.03,
                          color: Colors.white),
                    )
                  ],
                ),
                //login
                //emailtext filed
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue.shade900)),
                        label: Text(
                          "Email",
                          style: TextStyle(color: Colors.grey.shade900),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true),
                  ),
                ),
                //password filed
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue.shade900)),
                        label: Text(
                          "Password",
                          style: TextStyle(color: Colors.grey.shade900),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true),
                  ),
                ),
                //remeber me button
                // sgin button
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnboardingScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).height * 0.09,
                        vertical: MediaQuery.sizeOf(context).height * 0.01),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue.shade900,
                    ),
                    child: Text(
                      "SGIN IN",
                      style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).height * 0.020,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                //forgetpasword
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forget the Password?",
                      style: TextStyle(color: Colors.blue.shade900),
                    )
                  ],
                ),
                //continue
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      thickness: 0.5,
                    ),
                    Text("Continue With"),
                    Divider(
                      thickness: 0.5,
                    )
                  ],
                )

                //facebook
                //google
                //apple
                //donts have account
              ],
            ),
          ),
        ));
  }
}
