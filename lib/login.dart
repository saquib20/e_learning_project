// import 'package:dro/data/data_export.dart';
// // import 'package:dro/main.dart';
// import 'package:dro/signup.dart';
import 'package:e_learning_project/main.dart';
import 'package:e_learning_project/mainPage.dart';
import 'package:e_learning_project/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Login(), debugShowCheckedModeBanner: false));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _username = TextEditingController();
  @override
  final _password = TextEditingController();
  bool passwordvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning Ocean"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Image.network(
                    "https://media.istockphoto.com/id/1281150061/vector/register-account-submit-access-login-password-username-internet-online-website-concept.jpg?s=612x612&w=0&k=20&c=9HWSuA9IaU4o-CK6fALBS5eaO1ubnsM08EOYwgbwGBo="),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("User Name"),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: 320,
                      height: 48,
                      child: TextField(
                        controller: _username,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Password"),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: 320,
                      height: 48,
                      child: TextField(
                        controller: _password,
                        obscureText: passwordvisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(passwordvisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passwordvisible = !passwordvisible;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 46, 196, 182),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Saved Successflly!'),
                              content: Text('Your Details has been Saved'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ELearning()));
                                    },
                                    child: Text("Okay"))
                              ],
                            );
                          });
                    },
                    child: Text("Submit")),
                // InkWell(
                //   onTap: () {
                //     Navigator.pushReplacement(context,
                //         MaterialPageRoute(builder: (context) => ELearning()));
                //   },
                //   child: Container(
                //     width: 320,
                //     height: 48,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         color: const Color.fromARGB(255, 31, 128, 224)),
                //     child: const Center(
                //       child: Text(
                //         "Login",
                //         style: TextStyle(
                //             fontFamily: "Roboto",
                //             fontWeight: FontWeight.w700,
                //             fontSize: 15),
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        indent: 30,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Or"),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        endIndent: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Column(
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 15),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ELearning()));
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            color: Color.fromARGB(255, 46, 196, 182),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
