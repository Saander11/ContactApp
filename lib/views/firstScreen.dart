import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contactappsander/authentication/authenticationFirebase.dart';

class FirstScreen extends StatelessWidget {
  final Color secondaryColor = Color(0xff232c51);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PROFILE"),
          backgroundColor: Colors.black,
          titleSpacing: 165,
        ),
        drawer: Drawer(),
        body: 
        new Column(children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person)
            ,
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
                  context.read<AuthenticationService>().signOut();
                },
                child: Text("Sign out"),
              ),
            ],
          ),
        ]));
  }
}
