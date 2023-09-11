import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/CompleteRegistration4.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/resetpagetow.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/Customtextfiled.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containercountcompleteregister.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/numberCountincompleteregester.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/selectExperiance.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/textfiledwithiconbutton.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompleteRegistration3 extends StatefulWidget {
  const CompleteRegistration3({super.key});

  @override
  State<CompleteRegistration3> createState() => _CompleteRegistration1State();
}

class _CompleteRegistration1State extends State<CompleteRegistration3> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      'Select your experiences',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  numberpage(number: '3'),
                  countcontainer(color: kcolor),
                  countcontainer(color: kcolor),
                  countcontainer(color: kcolor),
                  countcontainer(color: Color(0xffE0E0E0)),
                  countcontainer(color: Color(0xffE0E0E0)),
                  countcontainer(color: Color(0xffE0E0E0)),
                  numberpage(number: '6'),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  select(
                    text: 'Advertising & Finance',
                    onTap: () {},
                  ),select(
                    text: 'Graphic Design',
                    onTap: () {},
                  ),select(
                    text: 'Software Development',
                    onTap: () {},
                  ),select(
                    text: 'UX/UI Design',
                    onTap: () {},
                  ),select(
                    text: 'Copywriting',
                    onTap: () {},
                  ),select(
                    text: 'Video Editing',
                    onTap: () {},
                  ),select(
                    text: 'Sales & Marketing',
                    onTap: () {},
                  ),select(
                    text: 'Others...',
                    onTap: () {},
                  ),
                const  SizedBox(
                    height: 40,
                  )
                ],
              ),
              custombuttonnoarrow(
                  name: 'Continue',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CompleteRegistration4()),)
                      ;
                  },
                  width: MediaQuery.of(context).size.width),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
