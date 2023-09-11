import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/Jobmodle.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/infromationJob.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';

class recommendationspage extends StatefulWidget {
  const recommendationspage({super.key});

  @override
  State<recommendationspage> createState() => _recommendationspageState();
}

class _recommendationspageState extends State<recommendationspage> {
  final List<jobmodel> listjop = [
    jobmodel(
        love: true,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Googleicon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$55,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'UX/UI Designer'),
        jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Apple - icon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Remote',
        place: 'Riyadh, Saudi Arabia',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Apple, llc',
        title: 'UX/UI Designer'),
         jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Facbook.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Remote',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Facebook, llc',
        title: 'Flutter Developer'),
        jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Apple - icon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'UX/UI Designer'),jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Googleicon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'Front  End '),jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Apple - icon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'UX/UI Designer'),
         jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Facbook.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Facebook, llc',
        title: 'Flutter Developer'),jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Googleicon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'Front  End '),jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Apple - icon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'UX/UI Designer'),
        jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Apple - icon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'UX/UI Designer'),jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Googleicon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'Front  End '),jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Apple - icon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'UX/UI Designer'),
        jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Apple - icon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'UX/UI Designer'),jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Googleicon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'Front  End '),jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Apple - icon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Full-Time',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'UX/UI Designer'),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
          const  SizedBox(
              height: 20,
            ),
          const  Row(
              children: [
                back(),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Recommendations',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Color(0xff343A40)),
                )
              ],
            ),
          const  SizedBox(
              height: 20,
            ),
          Expanded(child: ListView.builder(
          physics:const BouncingScrollPhysics(),
          itemCount: listjop.length,
          itemBuilder: (context,index)=>Jobinformation(model: listjop[index])))
          ]),
        ),
      ),
    );
  }
}
