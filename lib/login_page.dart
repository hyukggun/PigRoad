import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('돼지름길'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('ID'),
            TextField(),
            Text('Password'),
            TextField(),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Sign up'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Login'),
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}
