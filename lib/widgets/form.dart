import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();
  //----------------------FUNCTIONS----------------------//
  trySubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save;
      submitForm();
    } else {
      print('Error');
    }
  }

  submitForm() {
    print(firstName);
    print(lastName);
    print(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text('Form'),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Enter first name'),
                    key: const ValueKey('firstname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      firstName = newValue.toString();
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Enter last name'),
                    key: const ValueKey('lastname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Last name should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      lastName = newValue.toString();
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Enter email'),
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Email should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      email = newValue.toString();
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(hintText: 'Enter password'),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Password should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      password = newValue.toString();
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        trySubmit();
                      },
                      child: const Text('Submit'))
                ],
              ),
            ),
          ),
        ));
  }
}
