import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/login_screen.dart';

class signup_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Image(
                  image: Assets.images.signupTop,
                  width: size.width * 0.3,
                )),
            Positioned(
                bottom: 0,
                left: 0,
                child: Image(
                  image: Assets.images.mainBottom,
                  width: size.width * 0.2,
                )),
            SizedBox.expand(
              child: Padding(
                padding: EdgeInsets.only(top: size.height / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: textTheme.headline1,
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    SvgPicture.asset(Assets.icons.signup),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      height: size.height / 15,
                      child: const TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFF1E6FF)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(29))),
                            prefixIcon: Icon(
                              Icons.account_box,
                              color: Color(0xFF6F35A5),
                            ),
                            fillColor: Color(0xFFF1E6FF),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFF1E6FF)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(29)))),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      height: size.height / 15,
                      child: const TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFF1E6FF)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(29))),
                            prefixIcon: Icon(
                              CupertinoIcons.lock_fill,
                              color: Color(0xFF6F35A5),
                            ),
                            fillColor: Color(0xFFF1E6FF),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFF1E6FF)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(29)))),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(29)),
                      child: Container(
                        width: size.width * 0.8,
                        height: size.height / 15,
                        color: const Color(0xFF6F35A5),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => login_screen()));
                      },
                      child: const Text(
                        "Already have an account? login",
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
