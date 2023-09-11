import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/CompleteRegistration6.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/resetpageThired.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/OtpContainer.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containercountcompleteregister.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/numberCountincompleteregester.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';

class CompleteRegistration5 extends StatelessWidget {
  const CompleteRegistration5({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
            const  Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    back(),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Create new PIN',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    )
                  ],
                ),
              ),
            const  SizedBox(
                height: 20,
              ),
          const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    numberpage(number: '5'),
                    countcontainer(color: kcolor),
                    countcontainer(color: kcolor),
                    countcontainer(color: kcolor),
                    countcontainer(color: kcolor),
                    countcontainer(color: kcolor),
                    countcontainer(color: Color(0xffE0E0E0)),
                    numberpage(number: '6'),
                  ],
                ),const  SizedBox(
                height: 20,
              ),
            const  Text(
                'Create new PIN',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Color(0xff343A40),
                ),
              ),
            const  SizedBox(
                height: 10,
              ),
            const  Text(
                'This Code is used to keep your ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff6C757D),
                ),
              ),
              const  Text(
                'account secure and to easily ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff6C757D),
                ),
              ),const  Text(
                'return your account',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff6C757D),
                ),
              ),
            const  SizedBox(
                height: 50,
              ),
                  const  Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Otpconstainerr(),
                Otpconstainerr(),
                Otpconstainerr(),
                Otpconstainerr(),
              ],
            ),
            const  SizedBox(
                height: 100,
              ),
            custombuttonnoarrow(name: 'Continue', onTap: (){
               Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CompleteRegistration6(),),
                      );
            }, width: MediaQuery.of(context).size.width)
            
            ]),
          ),
        ),
      ),
    );
  }
}
