// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_commerce_project/utils/checkout_field.dart';
import 'package:e_commerce_project/utils/custom_button.dart';
import 'package:e_commerce_project/views/checkout.dart';
import 'package:e_commerce_project/views/nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ifscController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(253, 253, 253, 1),
        child: Padding(
            padding: const EdgeInsets.only(top: 44),
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                  left: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.navigate_before,
                        size: 30,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    Text(
                      'Checkout',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text('           '),
                    //Icon(Icons.navigate_before),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24, left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset('assets/group_Profile.png')),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Personal Details',
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Email Address',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: emailController,
                          hintText: 'Email Address',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Password',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: passwordController,
                          hintText: 'Password',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Change Password',
                            style: GoogleFonts.plusJakartaSans(
                              decoration: TextDecoration.underline,
                              decorationColor: Color.fromRGBO(248, 55, 88, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(248, 55, 88, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.maxFinite,
                          // height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(196, 196, 196, 1)
                                  // bottom: BorderSide(color: Color.fromRGBO(196, 196, 196, 1))
                                  )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Business Address Details',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Pincode',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: codeController,
                          hintText: 'Pincode',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Address',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: addressController,
                          hintText: 'Address',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'City',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: cityController,
                          hintText: 'City',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'State',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: stateController,
                          hintText: 'State',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Country',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: countryController,
                          hintText: 'Country',
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.maxFinite,
                          // height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(196, 196, 196, 1)
                                  // bottom: BorderSide(color: Color.fromRGBO(196, 196, 196, 1))
                                  )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Bank Account Details',
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Bank Account Number',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: numberController,
                          hintText: 'Account Number',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Account Holder\'s Name',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: nameController,
                          hintText: 'Account Holder\'s Name',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'IFSC Code',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CheckoutField(
                          controller: ifscController,
                          hintText: 'IFSC Code',
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Checkout();
                            }));
                          },
                          height: 52,
                          width: double.maxFinite,
                          backgroundColor: Color.fromRGBO(248, 55, 88, 1),
                          data: 'Save',
                          textColor: Color.fromRGBO(255, 255, 255, 1),
                          textSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]
            )
            ),
      ),
    );
  }
}
