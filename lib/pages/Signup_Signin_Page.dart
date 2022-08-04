import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tripo_app/providers/auth_provider.dart';
import 'package:tripo_app/widgets/signupshow.dart';

import '../models/user.dart';
import '../widgets/signinshowup.dart';

class SignupSigninPage extends StatelessWidget {
  SignupSigninPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/BackGround.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(children: [
          Image(
              width: 375,
              height: 350,
              image: AssetImage("assets/images/TripONoMoments.png")),
          Text(
            "Enjoy The Trip",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(75, 100, 75, 10),
            child: SizedBox(
              width: 340,
              height: 60,
              child: ElevatedButton(
                  onPressed: () async {
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      builder: (context) {
                        return SignupShowup();
                      },
                    );
                  },
                  child: Text(
                    "Sign up",
                  ),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: Color.fromARGB(255, 245, 87, 87))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(75, 10, 75, 20),
            child: SizedBox(
              width: 340,
              height: 60,
              child: ElevatedButton(
                  onPressed: () async {
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      builder: (context) {
                        return SigninShowup();
                      },
                    );
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Color.fromARGB(255, 245, 87, 87)),
                  ),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: Colors.white)),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.push("/VaviBar");
            },
            child: Text(
              "Skip",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: Colors.blueAccent),
            ),
          ),
        ]),
      )
    ]);
  }
}
