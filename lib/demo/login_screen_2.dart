import 'package:flutter/material.dart';
import 'package:flutter_fly/get_api_2/homepage_api_2.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage2"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: email,
              validator: (value) {
                if (value!.isEmpty) {
                  return "enter valid email";
                } else {
                  var value = email.text;
                  if (value == "harsh") {
                  } else {
                    return "enter Correct Admin id";
                  }
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Email",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: password,
              validator: (value) {
                if (value!.isEmpty) {
                  return "enter valid password";
                } else {
                  var value = password.text;
                  if (value == "sojitra") {
                  } else {
                    return "enter Correct password";
                  }
                }
                return null;
              },
              obscureText: passwordVisible,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    icon: Icon(passwordVisible
                        ? Icons.visibility_off
                        : Icons.visibility)),
                hintText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 40),
            MaterialButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageApi2(),
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
