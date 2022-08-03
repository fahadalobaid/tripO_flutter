import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tripo_app/providers/auth_provider.dart';

import '../models/user.dart';

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

          // Padding(
          //   padding: const EdgeInsets.fromLTRB(25, 35, 25, 6),
          //   child: TextField(
          //     // controller: username,
          //     // style: const TextStyle(fontSize: 12),
          //     decoration: InputDecoration(
          //       filled: true,
          //       fillColor: Colors.white,
          //       hintText: 'Enter Your User Name',
          //       prefixIcon: Icon(Icons.login),
          //       focusedBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(12.5),
          //         borderSide: const BorderSide(
          //             width: 1, color: Color.fromRGBO(236, 229, 199, 10)),
          //       ),
          //       enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(12.5),
          //         borderSide: const BorderSide(
          //             width: 1, color: Color.fromRGBO(236, 229, 199, 10)),
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(25, 6, 25, 15),
          //   child: TextField(
          //     // controller: password,
          //     // style: const TextStyle(fontSize: 12),
          //     decoration: InputDecoration(
          //         filled: true,
          //         fillColor: Colors.white,
          //         hintText: 'Enter Your Password',
          //         prefixIcon: Icon(Icons.lock_outline),
          //         // suffixIcon: Icon(Icons.visibility),
          //         suffixIcon: Icon(Icons.visibility_off),
          //         focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(12.5),
          //           borderSide: BorderSide(
          //               width: 1, color: Color.fromRGBO(236, 229, 199, 10)),
          //         ),
          //         enabledBorder: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(12.5),
          //             borderSide: const BorderSide(
          //                 width: 1, color: Color.fromRGBO(236, 229, 199, 10)))),
          //     obscureText: true,
          //   ),
          // ),
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
                        return Container(
                            // height: 100,

                            // width: MediaQuery.of(context).size.width,
                            // margin: EdgeInsets.symmetric(
                            //     horizontal: 20, vertical: 40),
                            child: Column(
                          children:
                              // <Widget>
                              [
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
                                controller: usernameController,
                                showCursor: true,
                                readOnly: true,
                                // controller: ,
                                // username,
                                // style: const TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  // filled: false,
                                  // fillColor: Colors.white,
                                  hintText: 'Enter Your User Name',
                                  prefixIcon: Icon(Icons.login),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  labelText: "Username",
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color.fromARGB(
                                              246, 245, 137, 137))
                                      //   borderRadius: BorderRadius.circular(12.5),
                                      //   // borderSide: const BorderSide(
                                      //   //     width: 1,
                                      //   //     color: Color.fromRGBO(236, 229, 199, 10)),
                                      ),
                                ),
                              ),
                            ),

//
// user name sign in
//
                            // TextFormField(
                            //   decoration: InputDecoration(
                            //     filled: false,
                            //     fillColor: Colors.white,
                            //     hintText: 'Add Username',
                            //     prefixIcon: Icon(Icons.login),
                            //     focusedBorder: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(12.5),
                            //       borderSide: const BorderSide(
                            //           width: 1,
                            //           color: Color.fromRGBO(236, 229, 199, 10)),
                            //     ),
                            //     enabledBorder: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(12.5),
                            //       borderSide: const BorderSide(
                            //           width: 1,
                            //           color: Color.fromRGBO(236, 229, 199, 10)),
                            //     ),
                            //   ),
                            //   validator: (value) {
                            //     if (value!.isEmpty) {
                            //       return "Please enter username";
                            //     } else {
                            //       return null;
                            //     }
                            //   },
                            //   onSaved: (value) {
                            //     // username = value!;
                            //   },
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextFormField(
                                controller: passwordController,
                                showCursor: true,
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: 'Add Password',
                                  prefixIcon: Icon(Icons.lock_outline),
                                  // suffixIcon: Icon(Icons.visibility),
                                  suffixIcon: Icon(Icons.visibility_off),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  labelText: "Password",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color:
                                            Color.fromARGB(246, 245, 137, 137)),
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
                                  // password = value!;
                                },
                                // obscureText: true,
                                // lets make it unvisable
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(75, 6, 75, 25),
                                child: SizedBox(
                                  width: 340,
                                  height: 60,
                                  child: ElevatedButton(
                                      onPressed: () async {
                                        //                             Provider.of<AuthProvider>(context, listen: false).signup(
                                        // user: User(
                                        // username: usernameController.text,
                                        // password: passwordController.text));

                                        // if (_formKey.currentState!.validate()) {
                                        //   _formKey.currentState!.save();
                                        //   var didSignUp = await context
                                        //       .read<UserProvider>()
                                        //       .signup(User(
                                        //           username: username,
                                        //           password: password,
                                        //           image: _image?.path));
                                        //   context.go("/SecondMain");
                                        // } else {
                                        // print("error");
                                        // }
                                      },
                                      child: Text("Sign Up"),
                                      style: ElevatedButton.styleFrom(
                                          textStyle: TextStyle(fontSize: 20),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          primary: Color.fromARGB(
                                              255, 245, 87, 87))),
                                ),
                              ),
                            )
                          ],
                        ));
                      },
                    );
                    // await context.read<UserProvider>().signin(
                    //     User(username: username.text, password: password.text));

                    // if (context.read<UserProvider>().isAuth == true) {
                    //   context.go("/SecondMain");
                    // } else {
                    //   print("Error");
                    // }
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
                        return Container(
                            // height: 100,

                            // width: MediaQuery.of(context).size.width,
                            // margin: EdgeInsets.symmetric(
                            //     horizontal: 20, vertical: 40),
                            child: Column(
                          children:
                              // <Widget>
                              [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Welcome Back",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: usernameController,
                                showCursor: true,
                                readOnly: false,
                                // controller: ,
                                // username,
                                // style: const TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  // filled: false,
                                  // fillColor: Colors.white,
                                  hintText: 'Enter Your User Name',
                                  prefixIcon: Icon(Icons.login),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  labelText: "Username",
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color.fromARGB(
                                              246, 245, 137, 137))
                                      //   borderRadius: BorderRadius.circular(12.5),
                                      //   // borderSide: const BorderSide(
                                      //   //     width: 1,
                                      //   //     color: Color.fromRGBO(236, 229, 199, 10)),
                                      ),
                                ),
                              ),
                            ),

//
// user name sign in
//
                            // TextFormField(
                            //   decoration: InputDecoration(
                            //     filled: false,
                            //     fillColor: Colors.white,
                            //     hintText: 'Add Username',
                            //     prefixIcon: Icon(Icons.login),
                            //     focusedBorder: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(12.5),
                            //       borderSide: const BorderSide(
                            //           width: 1,
                            //           color: Color.fromRGBO(236, 229, 199, 10)),
                            //     ),
                            //     enabledBorder: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(12.5),
                            //       borderSide: const BorderSide(
                            //           width: 1,
                            //           color: Color.fromRGBO(236, 229, 199, 10)),
                            //     ),
                            //   ),
                            //   validator: (value) {
                            //     if (value!.isEmpty) {
                            //       return "Please enter username";
                            //     } else {
                            //       return null;
                            //     }
                            //   },
                            //   onSaved: (value) {
                            //     // username = value!;
                            //   },
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextFormField(
                                controller: passwordController,
                                showCursor: true,
                                readOnly: false,
                                decoration: InputDecoration(
                                  hintText: 'Add Password',
                                  prefixIcon: Icon(Icons.lock_outline),
                                  // suffixIcon: Icon(Icons.visibility),
                                  suffixIcon: Icon(Icons.visibility_off),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  labelText: "Password",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color:
                                            Color.fromARGB(246, 245, 137, 137)),
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
                                  // password = value!;
                                },
                                // obscureText: true,
                                // lets make it unvisable
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(75, 6, 75, 25),
                                child: SizedBox(
                                  width: 340,
                                  height: 60,
                                  child: ElevatedButton(
                                      onPressed: () async {
                                        // Provider.of<AuthProvider>(context,
                                        //         listen: false)
                                        //     .signin(
                                        //         user: User(
                                        //             username:
                                        //                 usernameController.text,
                                        //             password: passwordController
                                        //                 .text));

                                        // if (_formKey.currentState!.validate()) {
                                        //   _formKey.currentState!.save();
                                        //   var didSignUp = await context
                                        //       .read<UserProvider>()
                                        //       .signup(User(
                                        //           username: username,
                                        //           password: password,
                                        //           image: _image?.path));
                                        //   context.go("/SecondMain");
                                        // } else {
                                        // print("error");
                                        // }
                                      },
                                      child: Text("Sign in"),
                                      style: ElevatedButton.styleFrom(
                                          textStyle: TextStyle(fontSize: 20),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          primary: Color.fromARGB(
                                              255, 245, 87, 87))),
                                ),
                              ),
                            )
                          ],
                        ));
                      },
                    );
                    // await context.read<UserProvider>().signin(
                    //     User(username: username.text, password: password.text));

                    // if (context.read<UserProvider>().isAuth == true) {
                    //   context.go("/SecondMain");
                    // } else {
                    //   print("Error");
                    // }
                    // await context.read<UserProvider>().signin(
                    //     User(username: username.text, password: password.text));

                    // if (context.read<UserProvider>().isAuth == true) {
                    //   context.go("/SecondMain");
                    // } else {
                    //   print("Error");
                    // }
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
              // context.push("/signup");
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
