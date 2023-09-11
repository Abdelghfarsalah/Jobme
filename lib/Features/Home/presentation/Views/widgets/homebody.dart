import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/Notification.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/searchPage.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/infromationJob.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/sectionRecentJob.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/sectionrecomentation.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/Customtextfiled.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homebody extends StatefulWidget {
  const homebody({super.key});

  @override
  State<homebody> createState() => _homebodyState();
}

class _homebodyState extends State<homebody> {
  String? search;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SafeArea(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/Ellipse 11.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello🤞',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Abdelghfar Salah',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color(0xffF5F8FF),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Notificationspage()));
                          },
                          icon: const Image(
                            image: AssetImage('assets/images/notification.png'),
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onTap: () {},
                        onChanged: (data) {
                          search = data;
                        },
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xffCFDDFB),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            hintText: 'Search for a job, company....',
                            prefixIcon: Icon(FontAwesomeIcons.search)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 57,
                      width: 55,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.5)),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color(0xffCFDDFB),
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const searchPage()));
                            },
                            icon: const Icon(
                              FontAwesomeIcons.sliders,
                              color: kcolor,
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 152,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: kcolor),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'See how you can',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              const Text(
                                'find a job easily!',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: const Center(
                                  child: Text(
                                    'Read more',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: kcolor),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: -33,
                      left: 210,
                      child: Image(
                        image: AssetImage(
                            'assets/images/businessman-pointing-lateral-white-background-removebg-preview 1.png'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const recommendations(),
                const SizedBox(
                  height: 5,
                ),
                const recentJob(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
