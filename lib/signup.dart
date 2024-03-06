// import 'package:dro/data/data_export.dart';
// import 'package:dro/main.dart';
import 'package:e_learning_project/login.dart';
import 'package:e_learning_project/main.dart';
import 'package:e_learning_project/mainPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Signup(), debugShowCheckedModeBanner: false));
}

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool value = false;
  bool passwordvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning Ocean"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
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
                  const Text("Last Name"),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 320,
                    height: 48,
                    child: TextField(
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
                  const Text("Email"),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 320,
                    height: 48,
                    child: TextField(
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
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Confirm Password"),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 320,
                    height: 48,
                    child: TextField(
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
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Gender"),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 320,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
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
                  const Text("Date of Birth"),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 320,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  Row(
                    children: const [
                      Text("Agree With "),
                      Text(
                        "Terms & Condition and Privacy policy",
                        style:
                            TextStyle(color: Color.fromARGB(255, 46, 196, 182)),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 31, 128, 224)),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: const [
                  Text("Already a user ?"),
                  Text(
                    "Login here",
                    style: TextStyle(color: Color.fromARGB(255, 31, 128, 224)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
