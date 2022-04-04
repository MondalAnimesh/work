import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .7,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: const [
                  SizedBox(height: 50),
                  Text(
                    'Dite Guru',
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Divider(
                    thickness: .5,
                    indent: 120,
                    endIndent: 120,
                    color: Colors.white,
                  ),
                  Text(
                    ' CALCULATE EVERY BITE',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Fill The Below information to log in',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 100,
          right: 50,
          left: 50,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6.0,
                  ),
                ]),
            height: MediaQuery.of(context).size.height * .55,
            // width: MediaQuery.of(context).size.width * .75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Center(
                    child: Text(
                  'Login Account',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  style: TextStyle(color: Colors.deepPurple),
                  decoration: InputDecoration(
                      labelText: 'User name or E-Mail',
                      labelStyle: TextStyle(color: Colors.deepPurple),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ))),
                ),
                const TextField(
                  style: TextStyle(color: Colors.deepPurple),
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.deepPurple),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ))),
                ),
                TextButton(
                    child: const Text(
                      'In case you forgot password?',
                      style: TextStyle(fontSize: 14),
                    ),
                    onPressed: () {}),
                Center(
                    child: CupertinoButton.filled(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30.0)),
                        child: const Text('LOG IN'),
                        onPressed: () {})),
                const SizedBox(height: 15),
                Row(children: <Widget>[
                  const Expanded(
                      child: Divider(
                    color: Colors.black,
                  )),
                  Container(
                      margin: const EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: const Text("OR")),
                  const Expanded(
                      child: Divider(
                    color: Colors.black,
                  )),
                ]),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      FontAwesomeIcons.googlePlus,
                      color: Colors.red,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 50,
            left: 00,
            right: 00,
            child: Column(
              children: const [
                Text("Don't have an account?"),
                Text(
                  "RESISTER",
                  style: TextStyle(color: Colors.deepPurple),
                )
              ],
            ))
      ]),
    );
  }
}
