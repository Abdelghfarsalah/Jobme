import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/CompleteRegistration5.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/Customtextfiled.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containercountcompleteregister.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/numberCountincompleteregester.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompleteRegistration4 extends StatefulWidget {
  const CompleteRegistration4({super.key});

  @override
  State<CompleteRegistration4> createState() => _CompleteRegistration1State();
}

class _CompleteRegistration1State extends State<CompleteRegistration4> {
  bool selected = true;
  bool showpassword = false;
  bool male = true;
  var cotrollerData=TextEditingController();
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
                        'Complete your Profile',
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
                    numberpage(number: '4'),
                    countcontainer(color: kcolor),
                    countcontainer(color: kcolor),
                    countcontainer(color: kcolor),
                    countcontainer(color: kcolor),
                    countcontainer(color: Color(0xffE0E0E0)),
                    countcontainer(color: Color(0xffE0E0E0)),
                    numberpage(number: '6'),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Image(image: AssetImage('assets/images/image 5.png')),
                    Positioned(
                        top: 110,
                        left: 110,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Image(
                              image: AssetImage('assets/images/Edit Icon.png')),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                customtextfiled(
                    obscureText: false,
                    onChanged: (data) {},
                    hint: 'Username',
                    icon: const Icon(FontAwesomeIcons.user),
                    validator: (data) {}),
                const SizedBox(
                  height: 20,
                ),
                customtextfiled(
                    controller: cotrollerData,
                    obscureText: false,
                    onTap: () {
                      showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2024)).then((value) {
                        cotrollerData.text=value.toString();
                      });
                    },
                    onChanged: (data) {},
                    hint: 'Data of Birth',
                    suffixIcon: const Icon(FontAwesomeIcons.calendar),
                    validator: (data) {}),
                const SizedBox(
                  height: 20,
                ),
                customtextfiled(
                    obscureText: false,
                    onChanged: (data) {},
                    hint: 'Email',
                    icon: const Icon(Icons.email),
                    validator: (data) {}),
                const SizedBox(
                  height: 20,
                ),
                customtextfiled(
                    obscureText: showpassword,
                    onChanged: (data) {},
                    suffixIcon: showpassword
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                showpassword = !showpassword;
                              });
                            },
                            icon: const Icon(FontAwesomeIcons.eyeSlash))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                showpassword = !showpassword;
                              });
                            },
                            icon: const Icon(FontAwesomeIcons.eye)),
                    hint: 'Password',
                    icon: const Icon(FontAwesomeIcons.lock),
                    validator: (data) {}),
                const SizedBox(
                  height: 20,
                ),
                customtextfiled(
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    onChanged: (data) {},
                    hint: '1204116925',
                    icon: const SizedBox(
                      width: 80,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image(image: AssetImage('assets/images/EG.png')),
                          SizedBox(
                            width: 10,
                          ),
                          Text('+20  ')
                        ],
                      ),
                    ),
                    validator: (data) {}),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: Color(0xff343A40),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    maleornot(
                      male: male,
                      text: 'Male',
                      onTap: () {
                        setState(() {
                          male = !male;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    maleornot(
                      male: !male,
                      text: 'Female',
                      onTap: () {
                        setState(() {
                          male = !male;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                custombuttonnoarrow(
                    name: 'Continue',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CompleteRegistration5())
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
      ),
    );
  }
}

class maleornot extends StatelessWidget {
  const maleornot(
      {super.key, required this.text, required this.onTap, required this.male});
  final String text;
  final bool male;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    color: male ? kcolor : Colors.white,
                    border: Border.all(width: 2, color: kcolor),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                color: Color(0xff343A40),
              ),
            )
          ],
        ));
  }
}
