import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticationFirebase.dart';

class SignUp extends StatelessWidget {
  final Color secondaryColor = Color(0xff232c51);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PROFILE"),
          backgroundColor: Colors.black,
          titleSpacing: 165,
        ),
        body: new Column(children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Name",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Phone",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          const Divider(
            height: 1.0,
          ),
          new ListTile(
            leading: const Icon(Icons.lock),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Password",
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                color: Colors.red[300],
                onPressed: () {
                  context.read<AuthenticationService>().signUp(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim()
                        );
                },
                child: Text("Sign Up"),
              ),
            ],
          ),
        ]));
  }
}
