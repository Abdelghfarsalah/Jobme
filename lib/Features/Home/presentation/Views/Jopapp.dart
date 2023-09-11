import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/jopAppModel.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/BoxJobAppmodel.dart';
import 'package:flutter_application_1/constant.dart';

class Jopapplication extends StatefulWidget {
  const Jopapplication({super.key});

  @override
  State<Jopapplication> createState() => _JopapplicationState();
}

class _JopapplicationState extends State<Jopapplication> {
  final List<Appmodel> listmodel = [
    Appmodel(
        preimaryIocn:const Image(
                  fit: BoxFit.fill,
                  height: 50,
                  image: AssetImage('assets/images/Facbook.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
     Appmodel(
        preimaryIocn:const Image(
                  fit: BoxFit.fill,
                  height: 50,
                  image: AssetImage('assets/images/Googleicon.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
   Appmodel(
        preimaryIocn:const Image(
                  fit: BoxFit.fill,
                  height: 50,
                  image: AssetImage('assets/images/Apple - icon.png')),
        state: 'state',
        subtitle1: 'Designer Position at Facebook',
        data: '3 SEP, 2023 - 6:03 AM',
        subtitle: 'You have been Rejected at UX/UI',
        title: 'Bad Luck!'),
   Appmodel(
        preimaryIocn:const Image(
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Remove All',
                      style: TextStyle(color: kcolor, fontSize: 16),
                    )),
                const SizedBox(
                  width: 40,
                ),
                const Text(
                  'Job Applications',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Color(0xff343A40)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: listmodel.length,
              itemBuilder: (context,index)=>customBoxJopApp(model: listmodel[index],)))
          ],
        ),
      ),
    );
  }
}
