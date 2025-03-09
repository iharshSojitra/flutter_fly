import 'package:flutter/material.dart';

import 'home_page2.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignupPage"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email ID can't be Empty";
                } else {
                  var value = email.text;
                  if (value == 'harsh') {
                  } else {
                    return 'Enter correct Admin ID';
                  }
                }
                return null;
              },
              controller: email,
              decoration: InputDecoration(
                labelText: "Email",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter password";
                } else {
                  var value = password.text;
                  if (value == "sojitra") {
                  } else {
                    return "Enter correct password";
                  }
                }

                return null;
              },
              controller: password,
              decoration: InputDecoration(
                labelText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        HomePage2(email: email.text, password: password.text),
                  ));
                }
              },
              child: Text("Login"),
              color: Colors.purpleAccent,
            )
          ],
        ),
      ),
    );
  }
}
