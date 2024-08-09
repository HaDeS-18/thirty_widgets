import 'package:flutter/material.dart';

class Day24Authentication extends StatefulWidget {
  const Day24Authentication({super.key});

  @override
  State<Day24Authentication> createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Authentication Form'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                key: ValueKey('username'),
                decoration: InputDecoration(hintText: "Enter Username"),
              ),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: "Enter Email"),
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(hintText: "Enter password"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.purpleAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {}, child: Text('Already Signed up? Login')),
            ],
          ),
        ),
      ),
    );
  }
}
