import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Features/onboarding/presentation/views/firstpage.dart';
import 'package:flutter_application_1/core/widget/customButton.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration( image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/1_zRFJro2r5bZ-ZQssoxD_0Q.jpeg')
            )),
          child: Container(
            
              decoration: const BoxDecoration(
          gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            
            ),
              child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Jobme:Your',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  height: 1.2,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                'Gateway to Career',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    height: 1.2,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                'Success',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    height: 1.2,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 35,
              ),
              custombutton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const startOnboarding()));
                },
                width: 393,
                name: 'Get Started',
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
              ),
            ),
        ));
  }
}
