import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/Jobmodle.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/Recentpage.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/recommendationsPage.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/infromationJob.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/recenttype.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/cubit/recent_jopmanage_cubit.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class recentJob extends StatefulWidget {
  const recentJob({super.key});

  @override
  State<recentJob> createState() => _recommendationsState();
}

class _recommendationsState extends State<recentJob> {
  final List<jobmodel> listAll = [
    jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Facbook.png'),
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
        title: 'Designer'),
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
        title: 'Finance'),
    jobmodel(
        love: false,
        preimaryIocn: const Image(
          image: AssetImage('assets/images/Facbook.png'),
        ),
        hourc: 'Fixed hours',
        work: 'Remote',
        place: 'California, USA',
        price: '\$96,000 - \$124,000 / Year',
        subtitle: 'Google Design Team, llc',
        title: 'Software Development'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Recent Job',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff343A40)),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const recentpage()));
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
        BlocConsumer<RecentJopmanageCubit, RecentJopmanageState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      recenttype(
                          selected: BlocProvider.of<RecentJopmanageCubit>(context)
                                      .currentindex ==
                                  0
                              ? true
                              : false,
                          onTap: () {
                            BlocProvider.of<RecentJopmanageCubit>(context)
                                .changetype(index: 0);
                          },
                          width: 60,
                          text: 'All'),
                      recenttype(
                          selected: BlocProvider.of<RecentJopmanageCubit>(context)
                                      .currentindex ==
                                  1
                              ? true
                              : false,
                          onTap: () {
                            BlocProvider.of<RecentJopmanageCubit>(context)
                                .changetype(index: 1);
                          },
                          width: 74,
                          text: 'Design'),
                      recenttype(
                          selected: BlocProvider.of<RecentJopmanageCubit>(context)
                                      .currentindex ==
                                  2
                              ? true
                              : false,
                          onTap: () {
                            BlocProvider.of<RecentJopmanageCubit>(context)
                                .changetype(index: 2);
                          },
                          width: 80,
                          text: 'Finance'),
                      recenttype(
                          selected: BlocProvider.of<RecentJopmanageCubit>(context)
                                      .currentindex ==
                                  3
                              ? true
                              : false,
                          onTap: () {
                            BlocProvider.of<RecentJopmanageCubit>(context)
                                .changetype(index: 3);
                          },
                          width: 190,
                          text: 'Software Development'),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Jobinformation(model: listAll[BlocProvider.of<RecentJopmanageCubit>(context).currentindex]),
              ],
            );
          },
        )
      ],
    );
  }
}
