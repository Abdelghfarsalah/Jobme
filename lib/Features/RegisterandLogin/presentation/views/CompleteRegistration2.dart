import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/CompleteRegistration3.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/resetpagetow.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/Customtextfiled.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containercountcompleteregister.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/numberCountincompleteregester.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/textfiledwithiconbutton.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompleteRegistration2 extends StatefulWidget {
  const CompleteRegistration2({super.key});

  @override
  State<CompleteRegistration2> createState() => _CompleteRegistration1State();
}

class _CompleteRegistration1State extends State<CompleteRegistration2> {
  bool selected = false;
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
                      'Select your Region',
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
                  numberpage(number: '2'),
                  countcontainer(color: kcolor),
                  countcontainer(color: kcolor),
                  countcontainer(color: Color(0xffE0E0E0)),
                  countcontainer(color: Color(0xffE0E0E0)),
                  countcontainer(color: Color(0xffE0E0E0)),
                  countcontainer(color: Color(0xffE0E0E0)),
                  numberpage(number: '6'),
                ],
              ),
              const SizedBox(
                height: 40,
              ),const Text(
                      'Choose your job type',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    ),
              const Text(
                      'you can choose either you want to find',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0xff6C757D)),
                    ),
              const Text(
                      'a job or to hire someone',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0xff6C757D)),
                    ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){setState(() {
                        selected=!selected;
                      });},
                    child: Container(
                      height: 180,
                      width: 170,
                      decoration: BoxDecoration(
                        color: selected?kcolor: Colors.grey.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(16)),
                    child:const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Image(image: AssetImage('assets/images/shape1.png')),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Find a Job', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xffF5F8FF)),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Text('I want to find my ', style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xffF5F8FF)),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Text(' dream job', style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xffF5F8FF)),),
                        )
                      ]),
                    ),
                    ),
                  )
                  ,
                const  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selected=!selected;
                      });
                    },
                    child: Container(
                      height: 180,
                      width: 170,
                      decoration: BoxDecoration(
                        color: !selected?kcolor:Colors.grey.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(16)),
                    child:const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Image(image: AssetImage('assets/images/user.png')),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Hire somone', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xffF5F8FF)),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Text('I want to hire ', style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xffF5F8FF)),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Text('professional ones', style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xffF5F8FF)),),
                        )
                      ]),
                    ),
                    ),
                  )
                
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              custombuttonnoarrow(
                  name: 'Continue',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CompleteRegistration3()),
                      );
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
