import 'package:flutter/material.dart';
import 'package:flutter_fly/demo/homepage_4.dart';

class LoginSCreen3 extends StatefulWidget {
  const LoginSCreen3({super.key});

  @override
  State<LoginSCreen3> createState() => _LoginSCreen3State();
}

class _LoginSCreen3State extends State<LoginSCreen3> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login ")),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email must be enter";
                } else {
                  var value = email.text;
                  if (value == "harsh") {
                  } else {
                    return "enter valid email id";
                  }
                }
              },
              controller: email,
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 20),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "password must be enter";
                } else {
                  var value = password.text;
                  if (value == "sojitra") {
                  } else {
                    return "enter valid password";
                  }
                }
              },
              controller: password,
              obscureText: passwordVisible,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 40),
            MaterialButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage4(
                            email: email.text, password: password.text),
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
