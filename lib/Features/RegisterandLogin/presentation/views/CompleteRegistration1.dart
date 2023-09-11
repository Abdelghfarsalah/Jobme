import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/CompleteRegistration2.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/resetpagetow.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/Customtextfiled.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containercountcompleteregister.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/numberCountincompleteregester.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/textfiledwithiconbutton.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompleteRegistration1 extends StatefulWidget {
  const CompleteRegistration1({super.key});

  @override
  State<CompleteRegistration1> createState() => _CompleteRegistration1State();
}

class _CompleteRegistration1State extends State<CompleteRegistration1> {
   bool selected=false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:const   EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
            const    Padding(
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
                numberpage(number: '1'),
                countcontainer(color: kcolor),
                countcontainer(color: Color(0xffE0E0E0)),
                countcontainer(color: Color(0xffE0E0E0)),
                countcontainer(color: Color(0xffE0E0E0)),
                countcontainer(color: Color(0xffE0E0E0)),
                countcontainer(color: Color(0xffE0E0E0)),
                numberpage(number: '6'),
              ],
            )
            ,
          const  SizedBox(
              height: 40,
            ),
            customtextfiledwithiconbutton(onChanged: (data){}, hint: 'Select countery',
            icon: !selected?IconButton(onPressed: (){
              setState(() {
                selected=!selected;
              });
            }, icon:const Icon(FontAwesomeIcons.arrowRight)):
            IconButton(onPressed: (){
              setState(() {
                selected=!selected;
              });
            }, icon:const Icon(FontAwesomeIcons.arrowDown)), validator: (data){}),
            selected?Text('saddddd'):Text(''),
          
              custombuttonnoarrow(
                  name: 'Continue',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const CompleteRegistration2() ),
                      );
                  },
                  width: MediaQuery.of(context).size.width),
                const  SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 145,
                width: MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  
                  border: Border.all(
                    color: Colors.black
                  )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset('assets/images/shape.png'),
                  const  SizedBox( width: 40,),
                  const  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Upload your',  style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),),
                          Text(' resume or CV',  style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),)
                      ],
                    )
                  ],),
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
