import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/home.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/Customtextfiled.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/OtpContainer.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class resetpageThired extends StatelessWidget {
  const resetpageThired({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    back(),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Set a new password',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'New Password',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: Color(0xff343A40)),
                  ),
                ),
              ),
              customtextfiled(
                  obscureText: false,
                onChanged: (data) {},
                validator: (k) {
                  if (k!.isEmpty) {
                    return 'Please New password is required';
                  }
                },
                icon: const Icon(FontAwesomeIcons.lock),
                hint: 'Enter your New Password',
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Confirm New Password',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: Color(0xff343A40)),
                  ),
                ),
              ),
              customtextfiled(
                  obscureText: false,
                onChanged: (data) {},
                validator: (k) {
                  if (k!.isEmpty) {
                    return 'Please confirm New password is required';
                  }
                },
                icon: const Icon(FontAwesomeIcons.lock),
                hint: 'Enter your confirm New Password',
              ),
              const SizedBox(
                height: 50,
              ),
              custombuttonnoarrow(
                  name: 'Continue',
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Column(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Success Icon.png')),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Done!',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins',
                                        color: Color(0xff343A40)),
                                  ),
                                  Text(
                                    'Your Password is set successfully,',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        color: Color(0xff6C757D)),
                                  ),
                                  Text(
                                    'enjoy your finding job journey',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        color: Color(0xff6C757D)),
                                  )
                                ],
                              ),
                              actions: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const homepage(),
                                              ),
                                            );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(),
                                    height: 48,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Center(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Start',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              height: 1.2,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    )),
                                  ),
                                )
                              ],
                            ));
                  },
                  width: MediaQuery.of(context).size.width)
            ]),
          ),
        ),
      ),
    );
  }
}

