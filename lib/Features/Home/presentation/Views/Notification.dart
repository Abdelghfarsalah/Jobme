import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/jopAppModel.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/BoxJobAppmodel.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/constant.dart';

class Notificationspage extends StatefulWidget {
  const Notificationspage({super.key});

  @override
  State<Notificationspage> createState() => _recommendationspageState();
}

class _recommendationspageState extends State<Notificationspage> {
  bool general = true;
  final List<Appmodel> listApplications = [
    Appmodel(
        preimaryIocn: const Image(
            fit: BoxFit.fill,
            height: 50,
            image: AssetImage('assets/images/Facbook.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
    Appmodel(
        preimaryIocn: const Image(
            fit: BoxFit.fill,
            height: 50,
            image: AssetImage('assets/images/Googleicon.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
    Appmodel(
        preimaryIocn: const Image(
            fit: BoxFit.fill,
            height: 50,
            image: AssetImage('assets/images/Apple - icon.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
    Appmodel(
        preimaryIocn: const Image(
            fit: BoxFit.fill,
            height: 50,
            image: AssetImage('assets/images/Facbook.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
    Appmodel(
        preimaryIocn: const Image(
            fit: BoxFit.fill,
            height: 50,
            image: AssetImage('assets/images/Facbook.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
    Appmodel(
        preimaryIocn: const Image(
            fit: BoxFit.fill,
            height: 50,
            image: AssetImage('assets/images/Googleicon.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
    Appmodel(
        preimaryIocn: const Image(
            fit: BoxFit.fill,
            height: 50,
            image: AssetImage('assets/images/Apple - icon.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
    Appmodel(
        preimaryIocn: const Image(
            fit: BoxFit.fill,
            height: 50,
            image: AssetImage('assets/images/Facbook.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                back(),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Color(0xff343A40)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (general != true) general = !general;
                      });
                    },
                    child: Container(
                      decoration: general
                          ? const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: kcolor, width: 2)))
                          : null,
                      child: Center(
                        child: Text(
                          'General',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            height: 2,
                            color: general ? kcolor : Color(0xffCFDDFB),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (general != false) general = !general;
                      });
                    },
                    child: Container(
                      decoration: !general
                          ? const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: kcolor, width: 2)))
                          : null,
                      child: Center(
                        child: Text(
                          'Applications',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            height: 2,
                            color: !general ? kcolor : Color(0xffCFDDFB),
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            ),
            
            general
                ? Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.4,
                    ),
                    Center(
                    child: Text(
                      'You have no notifications ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        height: 2,
                        color: !general ? kcolor : const Color(0xff343A40),
                      ),
                    ),
                  ),
                  ],
                )
                : Expanded(
                    child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: listApplications.length,
                        itemBuilder: (context, index) => customBoxJopApp(
                              model: listApplications[index],
                            )),
                  ))
          ]),
        ),
      ),
    );
  }
}
