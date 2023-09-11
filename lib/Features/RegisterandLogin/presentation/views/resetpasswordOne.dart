import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/resetpagetow.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/Customtextfiled.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/emailorphonecontainer.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class resetpasswordpageone extends StatefulWidget {
  const resetpasswordpageone({super.key});

  @override
  State<resetpasswordpageone> createState() => _resetpasswordpageoneState();
}

class _resetpasswordpageoneState extends State<resetpasswordpageone> {
  bool selected = true;
  late String email;
  late String phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    back(),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Reset your Password',
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
              const Text(
                'Choose your available',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Color(0xff343A40),
                ),
              ),
              const Text(
                'way to reset the passwerd',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Color(0xff343A40),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              EmailOrphone(
                  icon: const Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  selected: selected,
                  word: 'Vai Phone'),
              const SizedBox(
                height: 10,
              ),
              selected
                  ? customtextfiled(
                  obscureText: false,
                      onChanged: (data) {
                        phone = data;
                      },
                      validator: (k) {
                        if (k!.isEmpty) {
                          return 'Please Phone is required';
                        }
                      },
                      icon: const Icon(FontAwesomeIcons.phone),
                      hint: 'Enter your Phone',
                    )
                  : const Text(''),
              const SizedBox(
                height: 10,
              ),
              EmailOrphone(
                  icon: const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  selected: !selected,
                  word: 'Vai Email'),
              const SizedBox(
                height: 20,
              ),
              !selected
                  ? customtextfiled(
                  obscureText: false,
                      onChanged: (data) {
                        phone = data;
                      },
                      validator: (k) {
                        if (k!.isEmpty) {
                          return 'Please Email is required';
                        }
                      },
                      icon: const Icon(Icons.email),
                      hint: 'Enter your Email',
                    )
                  : const Text(''),
              const SizedBox(
                height: 20,
              ),
              custombuttonnoarrow(
                  name: 'Continue',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  resetpagetow(phone: phone,),),
                      );
                  },
                  width: MediaQuery.of(context).size.width)
            ],
          ),
        ),
      )),
    );
  }
}
