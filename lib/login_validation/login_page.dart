import 'package:flutter/material.dart';
import 'package:flutter_fly/login_validation/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginPage"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(height: 10),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Email";
                }
                return null;
              },
              controller: email,
              decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            SizedBox(height: 10),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter password";
                }
                return null;
              },
              controller: password,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        HomePage(email: email.text, password: password.text),
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
