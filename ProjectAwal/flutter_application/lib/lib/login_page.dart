import 'package:flutter/material.dart';
import 'components/textFailed.dart';

class LoginPag extends StatefulWidget {
  const LoginPag({super.key});

  @override
  State<LoginPag> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPag> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome too Application " + statusLogin.toString(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              txtController: txtUsername,
              myHint: "Input username",
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              txtController: txtPassword,
              myHint: "Input password",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String username = txtUsername.text.toString();
                      String password = txtPassword.text.toString();
                      if (username == "admin" && password == "admin") {
                        print("Login Success");
                        statusLogin = "Admin";
                      } else {
                        print("Login Failed");
                        statusLogin = "Failed";
                      }
                    });
                  },
                  child: Text("Login")),
              ElevatedButton(onPressed: () {}, child: Text("Register")),
            ],
          ),
        ],
      ),
    );
  }
}
