import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

abstract class BuildText extends StatelessWidget {
  const BuildText({Key? key}) : super(key: key);

  @override
  Widget buildTextField(String labelText, String placeholder, String controller,
      bool isPasswordTextField, Widget prefixIcon) {
    return Padding(
        padding: EdgeInsets.fromLTRB(25, 15, 25, 6),
        child: TextField(
            // obscureText: isPasswordTextField ? is0bscurePassword : false,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.5),
                  borderSide: const BorderSide(
                      width: 1, color: Color.fromRGBO(236, 229, 199, 10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.5),
                  borderSide: const BorderSide(
                      width: 1, color: Color.fromRGBO(236, 229, 199, 10)),
                ),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: isPasswordTextField
                    ? IconButton(
                        icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                        onPressed: () {})
                    : null, // IconButton
                contentPadding: EdgeInsets.only(bottom: 5),
                labelText: labelText,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: placeholder,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ))));
  }
}
