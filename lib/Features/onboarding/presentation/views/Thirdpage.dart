import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/register.dart';
import 'package:flutter_application_1/Features/onboarding/presentation/views/secondpage.dart';
import 'package:flutter_application_1/Features/onboarding/presentation/views/widgets/customtoggelcontainer.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/customButton.dart';

class thirdpage extends StatelessWidget {
  const thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 65,
          ),
          Image(
              image: const AssetImage('assets/images/news.png'),
              height: MediaQuery.of(context).size.height * 0.43),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 50,
                    spreadRadius: 0.5,
                  )
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child:  Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const  SizedBox(
                    height: 20,
                  ),
                const  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customtoggelcontainer(
                        color: Colors.grey,
                      ),
                      customtoggelcontainer(
                        color: Colors.grey,
                      ),
                      customtoggelcontainer(
                        color: kcolor,
                      ),
                    ],
                  ),
                const  SizedBox(
                    height: 30,
                  ),
                const  Text(
                    'Personalized Job ',
                    style: TextStyle(
                      color: Color(0xff343A40),
                      fontSize: 32,
                      height: 1.2,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                const  Text(
                    ' Recommendations',
                    style: TextStyle(
                      color: Color(0xff343A40),
                      fontSize: 32,
                      height: 1.2,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                const  SizedBox(
                    height: 10,
                  ),
                const  Text(
                    'We analyze your preferences, skills, and',
                    style: TextStyle(
                      color: Color(0xff6C757D),
                      fontSize: 16,
                      height: 1.6,
                      fontFamily: 'Poppins',
                    ),
                  ),
                const  Text(
                    'career goals to curate tailored job',
                    style: TextStyle(
                      color: Color(0xff6C757D),
                      fontSize: 16,
                      height: 1.6,
                      fontFamily: 'Poppins',
                    ),
                  ),
                const  Text(
                    'recommendations',
                    style: TextStyle(
                      color: Color(0xff6C757D),
                      fontSize: 16,
                      height: 1.6,
                      fontFamily: 'Poppins',
                    ),
                  ),
               
                const  SizedBox(
                    height: 30,
                  ),
                custombutton(name: 'Get Started', onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const registerpage()));
                }, width: 200)
                
                
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
