import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/gen/assets.gen.dart';
import 'package:login_ui/login_screen.dart';
import 'package:login_ui/signup_screen.dart';

class welcome_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            // alignment: Alignment.center,
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
                left: 0,
                child: Image.asset(
                  Assets.images.mainBottom.path,
                  width: size.width * 0.2,
                ),
              ),
              SizedBox.expand(
                child: Padding(
                  padding: EdgeInsets.only(top: size.height / 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome",
                        style: textTheme.headline1,
                      ),
                      SizedBox(
                        height: size.height / 12,
                      ),
                      SvgPicture.asset(
                        Assets.icons.welcome,
                        height: size.height * 0.45,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(29)),
                        child: Container(
                          color: const Color(0xFF6F35A5),
                          width: size.width * 0.8,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => login_screen()));
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(29)),
                        child: Container(
                          color: const Color(0xFFF1E6FF),
                          width: size.width * 0.8,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => signup_screen()
                                ));
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
