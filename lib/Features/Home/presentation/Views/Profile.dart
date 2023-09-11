import 'package:flutter/material.dart';import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/loginpage.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_switch/flutter_switch.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _recommendationspageState();
}

class _recommendationspageState extends State<profile> {
  @override
  bool no=true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                back(),
                SizedBox(
                  width: 110,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Profile',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: Color(0xff343A40)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Abdelghfar Salah',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff343A40)),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Software Engineer',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6C757D)),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(thickness: 1, height: 1, color: Color(0xff6C757D)),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const  Text(
                      'Account',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6C757D)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          const Icon(Icons.email),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Edit User Data',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.arrowRight))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          const Icon(FontAwesomeIcons.locationPin),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Edit Location',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Spacer(),
                          const Text(
                            'Egypt',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6C757D)),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.arrowRight))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          const Icon(FontAwesomeIcons.bell),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Notifications',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Spacer(),
                          FlutterSwitch(
                            activeColor: Colors.green,
                            value: no, 
                            onToggle: (value){
                              setState(() {
                                no=value;
                              });
                            }),
                          IconButton(
                              onPressed: () {},
                              icon:const Icon(FontAwesomeIcons.arrowRight))
                        ],
                      ),
                    )
                    ,const SizedBox(
                      height: 20,
                    ),const  Text(
                      'Others',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6C757D)),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          const Icon(Icons.lock),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Privacy Police ',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.arrowRight))
                        ],
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_today),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Terms & Conditions',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.arrowRight))
                        ],
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          const Icon(Icons.star),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Help & Feedback',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Spacer(),

                          IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.arrowRight))
                        ],
                      ),
                    ),
                    
                    GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const loginpage()), (route) => false);
                      },
                      child:const Row(
                        children: [
                          Image(image: AssetImage('assets/images/logout.png')),
                          SizedBox(width: 5,),
                          Text('Logout',style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0xffDC3545)),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
