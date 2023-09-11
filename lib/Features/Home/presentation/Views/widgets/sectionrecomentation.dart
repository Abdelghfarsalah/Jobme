import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/Jobmodle.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/recommendationsPage.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/infromationJob.dart';
import 'package:flutter_application_1/constant.dart';

class recommendations extends StatefulWidget {
  const recommendations({super.key});

  @override
  State<recommendations> createState() => _recommendationsState();
}

class _recommendationsState extends State<recommendations> {
  final List<jobmodel> listjop = [
    jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Googleicon.png'),
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
        work: 'Remote',
        place: 'Riyadh, Saudi Arabia',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Apple, llc',
        title: 'UX/UI Designer'),
         jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Googleicon.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Remote',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Recommendations',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff343A40)),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const recommendationspage()));
                },
                child: const Text(
                  'See All',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: kcolor),
                ))
          ],
        ),
        
      SizedBox(
        height: 280,
        child: ListView.builder(
          physics:const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: listjop.length,
          itemBuilder: (context,index)=>Jobinformation(model: listjop[index])),
      )
      ],
    );
  }
}
