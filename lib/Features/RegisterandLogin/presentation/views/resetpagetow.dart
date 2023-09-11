import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/resetpageThired.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/OtpContainer.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/Features/onboarding/presentation/views/Thirdpage.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';

class resetpagetow extends StatelessWidget {
  const resetpagetow({super.key,required this.phone});
  final String phone;
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
                      'Verify OTP Code',
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
            const  Text(
                'Verify OTP Code',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Color(0xff343A40),
                ),
              ),
            const  SizedBox(
                height: 10,
              ),
            const  Text(
                'We Send The Code to the number',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff6C757D),
                ),
              ),
              Text(
                '+2${phone[0]}${phone[1]}${phone[2]}${phone[3]}${phone[4]}*****${phone[9]}${phone[10]}',
                style:const TextStyle(
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
            custombuttonnoarrow(name: 'Verify', onTap: (){
              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const resetpageThired(),),
                      );
            }, width: MediaQuery.of(context).size.width)
            
            ]),
          ),
        ),
      ),
    );
  }
}
