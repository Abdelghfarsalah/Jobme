import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/home.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/resetpasswordOne.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/BoxIcon.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/Customtextfiled.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginbody extends StatefulWidget {
  const Loginbody({super.key});

  @override
  State<Loginbody> createState() => _LoginbodyState();
}

class _LoginbodyState extends State<Loginbody> {

  late String? email;

  late String? password;

  GlobalKey<FormState> keyform=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: keyform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Image(
                  height: 130,
                  image: AssetImage('assets/images/Group110.png'),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Welcome Back!🤞',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: Color(0xff343A40)),
                ),
                
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    boxIcon(
                      onTap: () {},
                      icon: const Image(
                          image: AssetImage('assets/images/Googleicon.png')),
                    ),
                    boxIcon(
                        onTap: () {},
                        icon: const Image(
                            image: AssetImage('assets/images/Facbook.png'))),
                    boxIcon(
                        onTap: () {},
                        icon: const Image(
                            image: AssetImage('assets/images/Apple - icon.png'))),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          child: const Divider(
                            thickness: 1.1,
                            color: Color(0xffE0E0E0),
                            height: 36,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'or login with',
                      style: TextStyle(color: Color(0xffE0E0E0), fontSize: 16),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        child: const Divider(
                          thickness: 1.1,
                          color: Color(0xffE0E0E0),
                          height: 35,
                        ),
                      ),
                    ))
                  ],
                ),
                
                
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    ),
                  ),
                ),
                customtextfiled(
                  obscureText: false,
                  onChanged: (data){
                    email=data;
                  },
                  validator: (k) {if(k!.isEmpty){
                      return 'Please Email is required';
                    }},
                  icon: const Icon(FontAwesomeIcons.envelope),
                  hint: 'Enter your Email',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    ),
                  ),
                ),
                customtextfiled(
                  obscureText: false,
                  onChanged: (data){
                    password=data;
                  },
                  validator: (k) {if(k!.isEmpty){
                      return 'Please password is required';
                    }},
                  icon: const Icon(FontAwesomeIcons.lock),
                  hint: 'Enter your Password',
                ),
                
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const resetpasswordpageone()));
              }, child: const  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Foregot your Password?',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    ),
                  ),),
              const SizedBox(
                height: 10,
              ),
              custombuttonnoarrow(name: 'Login', onTap: (){
                if(keyform.currentState!.validate())
                {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const homepage(),),
                      );
                }
              }, width: 385)
              ,const SizedBox(
                height: 30,
              ), 
              const Text(
                      'Dont have account ?',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff6C757D)),
                    ),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text(
                      'SignUp',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color:kcolor),
                    ),),const SizedBox(
                height: 30,
              ), 
            ],
            ),
          ),
        ),
      ),
    );
  }
}
