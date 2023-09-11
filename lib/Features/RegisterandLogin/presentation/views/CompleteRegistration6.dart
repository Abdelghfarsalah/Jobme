import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/home.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/resetpageThired.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/OtpContainer.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containercountcompleteregister.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/numberCountincompleteregester.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';

class CompleteRegistration6 extends StatelessWidget {
  const CompleteRegistration6({super.key});

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
                      'Set your Fingerprint',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  numberpage(number: '6'),
                  countcontainer(color: kcolor),
                  countcontainer(color: kcolor),
                  countcontainer(color: kcolor),
                  countcontainer(color: kcolor),
                  countcontainer(color: kcolor),
                  countcontainer(color: kcolor),
                  numberpage(number: '6'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Set your Fingerprint',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Color(0xff343A40),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Set your Fingerprint to keep your',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff6C757D),
                ),
              ),
              const Text(
                'account secure',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff6C757D),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Image(image: AssetImage('assets/images/Vector.png')),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Keep pressing on the Fingerprint to ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff6C757D),
                ),
              ),
              const Text(
                'verify your identication',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff6C757D),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'SKIP',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Color(0xff6C757D)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: custombuttonnoarrow(
                        name: 'Finish',
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Column(
                                      children: [
                                        const Image(
                                            image: AssetImage(
                                                'assets/images/Success Icon.png')),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text('Congratulations!',
                                            style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Poppins',
                                              color: Color(0xff343A40),
                                            )),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          'Your Account is ready, we wish you ',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            color: Color(0xff6C757D),
                                          ),
                                        ),
                                        const Text(
                                          'find your dream job.',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            color: Color(0xff6C757D),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
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
                                            padding: const EdgeInsets.only(),
                                            height: 48,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
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
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                        },
                        width: MediaQuery.of(context).size.width * 0.4),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
