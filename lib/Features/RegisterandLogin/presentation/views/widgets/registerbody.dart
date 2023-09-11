import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/CompleteRegistration1.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/loginpage.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/BoxIcon.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/Customtextfiled.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class registerbody extends StatefulWidget {
  const registerbody({super.key});

  @override
  State<registerbody> createState() => _registerbodyState();
}

class _registerbodyState extends State<registerbody> {
  late String? name;

  late String? email;

  late String? password;
  bool passwordornot = true;
  bool passwordornot1 = true;
  late String? confirm;
  GlobalKey<FormState> keyform = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: keyform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Image(
                  height: 130,
                  image: AssetImage('assets/images/Group110.png'),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Welcome, Let’s Prepare',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: Color(0xff343A40)),
                ),
                const Text(
                  ' your Account!',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: Color(0xff343A40)),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    boxIcon(
                      onTap: () {},
                      icon: const Image(
                          image: AssetImage('assets/images/Googleicon.png')),
                    ),
                    boxIcon(
                        onTap: () {},
                        icon: const Image(
                            image: AssetImage('assets/images/Facbook.png'))),
                    boxIcon(
                        onTap: () {},
                        icon: const Image(
                            image:
                                AssetImage('assets/images/Apple - icon.png'))),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          child: const Divider(
                            thickness: 1.1,
                            color: Color(0xffE0E0E0),
                            height: 36,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'or Register with',
                      style: TextStyle(color: Color(0xffE0E0E0), fontSize: 16),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        child: const Divider(
                          thickness: 1.1,
                          color: Color(0xffE0E0E0),
                          height: 35,
                        ),
                      ),
                    ))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Name',
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
                  onChanged: (data) {
                    name = data;
                  },
                  validator: (k) {
                    if (k!.isEmpty) {
                      return 'Please name is required';
                    }
                  },
                  icon: const Icon(FontAwesomeIcons.user),
                  hint: 'Enter your Name',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email',
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
                  onChanged: (data) {
                    email = data;
                  },
                  validator: (k) {
                    if (k!.isEmpty) {
                      return 'Please Email is required';
                    }
                  },
                  icon: const Icon(FontAwesomeIcons.envelope),
                  hint: 'Enter your Email',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    ),
                  ),
                ),
                customtextfiled(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordornot = !passwordornot;
                      });
                    },
                    icon: passwordornot
                        ? Icon(FontAwesomeIcons.eyeSlash)
                        : Icon(FontAwesomeIcons.eye),
                  ),
                  obscureText: passwordornot,
                  onChanged: (data) {
                    password = data;
                  },
                  validator: (k) {
                    if (k!.isEmpty) {
                      return 'Please password is required';
                    }
                  },
                  icon: const Icon(FontAwesomeIcons.lock),
                  hint: 'Enter your Password',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Confirm Password',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    ),
                  ),
                ),
                customtextfiled(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordornot1 =! passwordornot1;
                      });
                    },
                    icon: passwordornot1
                        ? Icon(FontAwesomeIcons.eyeSlash)
                        : Icon(FontAwesomeIcons.eye),
                  ),
                  obscureText: passwordornot1,
                  onChanged: (data) {
                    confirm = data;
                  },
                  validator: (k) {
                    if (k!.isEmpty) {
                      return 'Please confirm password is required';
                    }
                  },
                  icon: const Icon(FontAwesomeIcons.lock),
                  hint: 'Enter your Confirm Password',
                ),
                const SizedBox(
                  height: 30,
                ),
                custombuttonnoarrow(
                    name: 'Register',
                    onTap: () {
                      if (keyform.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CompleteRegistration1()));
                      }
                    },
                    width: 385),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Have account ?',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Color(0xff6C757D)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const loginpage()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: kcolor),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
