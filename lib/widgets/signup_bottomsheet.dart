
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';



// class Signup_showup extends StatelessWidget {
//   const Signup_showup({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return showModalBottomSheet(
//                       context: context,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(50.0),
//                       ),
//                       builder: (context) {
//                         return Container(
//                             // height: 100,

//                             // width: MediaQuery.of(context).size.width,
//                             // margin: EdgeInsets.symmetric(
//                             //     horizontal: 20, vertical: 40),
//                             child: Column(
//                           children:
//                               // <Widget>
//                               [
//                             Padding(
//                               padding: const EdgeInsets.all(20.0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     "Create Account",
//                                     style: TextStyle(
//                                       fontSize: 25,
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(16.0),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         CircleAvatar(
//                                           radius: 35.0,
//                                           backgroundColor:
//                                               Color.fromARGB(255, 245, 87, 87),
//                                           child: CircleAvatar(
//                                             child: Align(
//                                               alignment: Alignment.center,
//                                               child: CircleAvatar(
//                                                 backgroundColor: Colors.white,
//                                                 radius: 34.0,
//                                                 child: Icon(
//                                                   Icons.camera_alt_outlined,
//                                                   size: 38.0,
//                                                   color: Color(0xFF404040),
//                                                 ),
//                                               ),
//                                             ),
//                                             radius: 33.5,
//                                             backgroundColor: Colors.white,
//                                             // backgroundImage: AssetImage(
//                                             //     'assets/images/image-default.png'),
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Text("Uplode Picture"),
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),

//                             Padding(
//                               padding: const EdgeInsets.all(20.0),
//                               child: TextField(
//                                 showCursor: true,
//                                 readOnly: true,
//                                 // controller: ,
//                                 // username,
//                                 // style: const TextStyle(fontSize: 12),
//                                 decoration: InputDecoration(
//                                   // filled: false,
//                                   // fillColor: Colors.white,
//                                   hintText: 'Enter Your User Name',
//                                   prefixIcon: Icon(Icons.login),
//                                   floatingLabelBehavior:
//                                       FloatingLabelBehavior.auto,
//                                   labelText: "Username",
//                                   focusedBorder: UnderlineInputBorder(
//                                       borderSide: BorderSide(
//                                           width: 1,
//                                           color: Color.fromARGB(
//                                               246, 245, 137, 137))
//                                       //   borderRadius: BorderRadius.circular(12.5),
//                                       //   // borderSide: const BorderSide(
//                                       //   //     width: 1,
//                                       //   //     color: Color.fromRGBO(236, 229, 199, 10)),
//                                       ),
//                                 ),
//                               ),
//                             ),

// //
// // user name sign in
// //
//                             // TextFormField(
//                             //   decoration: InputDecoration(
//                             //     filled: false,
//                             //     fillColor: Colors.white,
//                             //     hintText: 'Add Username',
//                             //     prefixIcon: Icon(Icons.login),
//                             //     focusedBorder: OutlineInputBorder(
//                             //       borderRadius: BorderRadius.circular(12.5),
//                             //       borderSide: const BorderSide(
//                             //           width: 1,
//                             //           color: Color.fromRGBO(236, 229, 199, 10)),
//                             //     ),
//                             //     enabledBorder: OutlineInputBorder(
//                             //       borderRadius: BorderRadius.circular(12.5),
//                             //       borderSide: const BorderSide(
//                             //           width: 1,
//                             //           color: Color.fromRGBO(236, 229, 199, 10)),
//                             //     ),
//                             //   ),
//                             //   validator: (value) {
//                             //     if (value!.isEmpty) {
//                             //       return "Please enter username";
//                             //     } else {
//                             //       return null;
//                             //     }
//                             //   },
//                             //   onSaved: (value) {
//                             //     // username = value!;
//                             //   },
//                             // ),
//                             Padding(
//                               padding: const EdgeInsets.all(20.0),
//                               child: TextFormField(
//                                 showCursor: true,
//                                 readOnly: true,
//                                 decoration: InputDecoration(
//                                   hintText: 'Add Password',
//                                   prefixIcon: Icon(Icons.lock_outline),
//                                   // suffixIcon: Icon(Icons.visibility),
//                                   suffixIcon: Icon(Icons.visibility_off),
//                                   floatingLabelBehavior:
//                                       FloatingLabelBehavior.auto,
//                                   labelText: "Password",
//                                   focusedBorder: UnderlineInputBorder(
//                                     borderSide: BorderSide(
//                                         width: 1,
//                                         color:
//                                             Color.fromARGB(246, 245, 137, 137)),
//                                   ),
//                                 ),
//                                 maxLines: null,
//                                 validator: (value) {
//                                   if (value!.isEmpty) {
//                                     return "Please enter a password";
//                                   } else {
//                                     return null;
//                                   }
//                                 },
//                                 onSaved: (value) {
//                                   // password = value!;
//                                 },
//                                 // obscureText: true,
//                                 // lets make it unvisable
//                               ),
//                             ),
//                             Center(
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.fromLTRB(75, 6, 75, 25),
//                                 child: SizedBox(
//                                   width: 340,
//                                   height: 60,
//                                   child: ElevatedButton(
//                                       onPressed: () async {
//                                         // if (_formKey.currentState!.validate()) {
//                                         //   _formKey.currentState!.save();
//                                         //   var didSignUp = await context
//                                         //       .read<UserProvider>()
//                                         //       .signup(User(
//                                         //           username: username,
//                                         //           password: password,
//                                         //           image: _image?.path));
//                                         //   context.go("/SecondMain");
//                                         // } else {
//                                         // print("error");
//                                         // }
//                                       },
//                                       child: Text("Sign Up"),
//                                       style: ElevatedButton.styleFrom(
//                                           textStyle: TextStyle(fontSize: 20),
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30),
//                                           ),
//                                           primary: Color.fromARGB(
//                                               255, 245, 87, 87))),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ));
//                       },
//                     );
//   }
// }
