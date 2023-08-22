import 'package:flutter/material.dart';
import 'package:hogme_flutter_application/utils/colors/app_theme.dart';
import 'package:hogme_flutter_application/utils/widgets/button_shadow.dart';
import 'package:hogme_flutter_application/utils/widgets/text_widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController usernamecontroller;
  late TextEditingController passwordcontroller;

  @override
  void initState() {
    super.initState();
    usernamecontroller = TextEditingController();
    passwordcontroller = TextEditingController();
  }

  @override
  void dispose() {
    usernamecontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.primaryBackground,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo with text

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.00, right: 15.00),
                  child: Image.asset(
                    "assets/icons/icon_hogme.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                text50BoldHeading(text: 'HOGME'),
              ],
            ),

            //slogan - nurturing livestocks with innovation
            Padding(
              padding: const EdgeInsets.only(top: 10.00, bottom: 20.00),
              child: text16Bold(text: "Nurturing livestocks with innovation"),
            ),
            //email placeholder with icons
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: TextFormField(
                controller: usernamecontroller,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  labelText: "Email Address",
                  labelStyle: const TextStyle(color: Colors.black),
                  border: InputBorder.none,
                  filled: true,
                ),
              ),
            ),
            //password with icons
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: TextFormField(
                controller: passwordcontroller,
                obscureText: true,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Colors.black,
                  ),
                  labelText: "Password",
                  labelStyle: const TextStyle(color: Colors.black),
                  border: InputBorder.none,
                  filled: true,
                ),
              ),
            ),
            //forgot password = if makaya
            Container(
              margin: const EdgeInsets.only(left: 25.00),
              child: textUnderline(text: "Forgot password?"),
            ),
            //login button
            GestureDetector(
              onTap: () => {print("tapped")},
              child: Container(
                width: 325,
                height: 50,
                margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
                decoration: buttonShadow(themeColor: AppTheme.primaryButtons),
                child: Center(
                  child: text16Bold(text: "Log in", defaultColor: Colors.white),
                ),
              ),
            ),
            const Row(),
            //Create account button
            GestureDetector(
              onTap: () => {},
              child: Container(
                width: 325,
                height: 50,
                margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
                decoration: buttonShadow(themeColor: Colors.white),
                child: Center(
                  child:
                      text16Bold(text: "Sign up", defaultColor: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
