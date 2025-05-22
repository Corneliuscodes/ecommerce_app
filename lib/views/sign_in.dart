// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_project/utils/custom_button.dart';
import 'package:e_commerce_project/utils/input_field.dart';
import 'package:e_commerce_project/views/forgot_password.dart';
import 'package:e_commerce_project/views/get_started.dart';
import 'package:e_commerce_project/views/sign_up.dart';
import 'package:e_commerce_project/views/splash1.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        //padding: EdgeInsets.only(top: 63, left: 32, right: 32),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 63, left: 32, right: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome \nBack!',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: InputField(
                    controller: nameController,
                    hintText: 'Username or Email',
                    prefixIcon: Icon(
                      Icons.person_2,
                      size: 24,
                      color: Color.fromRGBO(98, 98, 98, 1),
                    ),
                  ),
                ),
                InputField(
                  controller: passwordController,
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 24,
                    color: Color.fromRGBO(98, 98, 98, 1),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    size: 24,
                    color: Color.fromRGBO(98, 98, 98, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 50),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ForgotPassword();
                        }));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color.fromRGBO(248, 55, 88, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return GetStarted();
                    }));
                  },
                  height: 55,
                  width: double.maxFinite,
                  backgroundColor: Color.fromRGBO(248, 55, 88, 1),
                  data: 'Login',
                  textColor: Color.fromRGBO(255, 255, 255, 1),
                  textSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          '- OR Continue with -',
                          style: TextStyle(
                              color: Color.fromRGBO(87, 87, 87, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromRGBO(248, 55, 88, 1)),
                                color: Color.fromRGBO(252, 243, 246, 1),
                              ),
                              child: Image.asset('assets/Frame 4.png'),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromRGBO(248, 55, 88, 1)),
                                color: Color.fromRGBO(252, 243, 246, 1),
                              ),
                              child: Image.asset('assets/apple 1.png'),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromRGBO(248, 55, 88, 1)),
                                color: Color.fromRGBO(252, 243, 246, 1),
                              ),
                              child: Image.asset(
                                  'assets/facebook-app-symbol 1.png'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Create an Account ',
                              style: TextStyle(
                                  color: Color.fromRGBO(87, 87, 87, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return SignUp();
                                }));
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        Color.fromRGBO(248, 55, 88, 1),
                                    color: Color.fromRGBO(248, 55, 88, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
