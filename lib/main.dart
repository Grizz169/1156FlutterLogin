import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Home Login Demo"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/backgroundImg.jpeg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                " Grizz's Login Page ",
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 30, 56, 31),
                    backgroundColor: Colors.white),
              ),
              const SizedBox(
                height: 35.0,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.blue),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(),
                        fillColor: Colors.blue,
                        filled: true),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 157, 158, 163),
                    textColor: Colors.blue,
                    child: const Text("Login"),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
