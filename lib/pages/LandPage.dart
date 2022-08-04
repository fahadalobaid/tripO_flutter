import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:slider_button/slider_button.dart';
import 'package:go_router/go_router.dart';

class LandPage extends StatefulWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  State<LandPage> createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/BackGround.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          //
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 200, 10, 130),
                child: Image.asset(
                  "assets/images/TripOlogo2.png",
                ),
              ),
              Center(
                child: SliderButton(
                  shimmer: false,
                  buttonColor: Color.fromARGB(255, 255, 245, 245),
                  backgroundColor:
                      Color.fromARGB(255, 182, 164, 164).withOpacity(0.85),
                  action: () {
                    GoRouter.of(context).push('/SignupSigninPage');
                  },
                  label: Text(
                    "Let's Explore !   ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  icon: Icon(
                    Icons.travel_explore,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
