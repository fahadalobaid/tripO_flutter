import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tripo_app/models/user.dart';
import 'package:tripo_app/providers/auth_provider.dart';

class SignupShowup extends StatefulWidget {
  SignupShowup({Key? key}) : super(key: key);

  @override
  State<SignupShowup> createState() => _SignupShowupState();
}

class _SignupShowupState extends State<SignupShowup> {
  // final newuserusernameController = TextEditingController();

  // final newuserpasswordController = TextEditingController();

  String username = "";

  String password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Create Account",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            // controller: newuserusernameController,
            onChanged: (value) {
              setState(() {
                username = value;
              });
            },
            showCursor: true,
            readOnly: false,
            decoration: InputDecoration(
              hintText: 'Enter Your User Name',
              prefixIcon: Icon(Icons.login),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              labelText: "Username",
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Color.fromARGB(246, 245, 137, 137))),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            onChanged: (value) {
              password = value;
            },
            // obscureText: true,
            // controller: newuserpasswordController,
            showCursor: true,
            readOnly: false,
            decoration: InputDecoration(
              hintText: 'Add Password',
              prefixIcon: Icon(Icons.lock_outline),
              // suffixIcon: Icon(Icons.visibility),
              // suffixIcon: Icon(Icons.visibility_off),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              labelText: "Password",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: Color.fromARGB(246, 245, 137, 137)),
              ),
            ),
            maxLines: null,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter a password";
              } else {
                return null;
              }
            },
            onSaved: (value) {
              password = value!;
            },
            // obscureText: true,
            // lets make it unvisable
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(75, 6, 75, 25),
            child: SizedBox(
              width: 340,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    Provider.of<UserProvider>(context, listen: false)
                        .signup(User(
                      // username: newuserusernameController.text,
                      // password: newuserpasswordController.text
                      username: username,
                      password: password,
                    ));
                    // context.go('/VaviBar');
                    setState(() {});
                  },
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: Color.fromARGB(255, 245, 87, 87))),
            ),
          ),
        )
      ],
    ));
  }
}
