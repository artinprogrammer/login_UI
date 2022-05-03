import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/gen/assets.gen.dart';
import 'package:login_ui/signup_screen.dart';

class login_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                Assets.images.mainTop.path,
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                Assets.images.loginBottom.path,
                width: size.width * 0.4,
              ),
            ),
            SizedBox.expand(
              child: Padding(
                padding: EdgeInsets.only(top: size.height / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: textTheme.headline1,
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    SvgPicture.asset(Assets.icons.login),
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
                                borderSide:
                                    BorderSide(color: Color(0xFFF1E6FF)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(29))),
                            prefixIcon: Icon(
                              CupertinoIcons.lock_fill,
                              size: 20,
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
                    // login button
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(29)),
                      child: Container(
                        color: const Color(0xFF6F35A5),
                        width: size.width * 0.8,
                        height: size.height / 15,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    TextButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signup_screen()));
                        }),
                        child: const Text(
                          "Don't have an account? sign up",
                          style: TextStyle(color: Colors.black38),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
