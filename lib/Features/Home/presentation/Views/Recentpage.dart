import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/Jobmodle.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/infromationJob.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/recenttype.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/cubit/recent_jopmanage_cubit.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class recentpage extends StatefulWidget {
  const recentpage({super.key});

  @override
  State<recentpage> createState() => _recentpageState();
}

class _recentpageState extends State<recentpage> {
  final List<List<jobmodel>> listrecent = [
    listAll,
    listDesign,
    listFinanace,
    listSoftwareEnginner
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                back(),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Recent Jobs',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Color(0xff343A40)),
                )
              ],
            ),
            const SizedBox(
              height: 30,
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
                              selected:
                                  BlocProvider.of<RecentJopmanageCubit>(context)
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
                              selected:
                                  BlocProvider.of<RecentJopmanageCubit>(context)
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
                              selected:
                                  BlocProvider.of<RecentJopmanageCubit>(context)
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
                              selected:
                                  BlocProvider.of<RecentJopmanageCubit>(context)
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
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.75,
                        child: ListView.builder(
                            itemCount: listrecent[
                                    BlocProvider.of<RecentJopmanageCubit>(
                                            context)
                                        .currentindex]
                                .length,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => Jobinformation(
                                model: listrecent[
                                    BlocProvider.of<RecentJopmanageCubit>(
                                            context)
                                        .currentindex][index])))
                  ],
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}

final List<jobmodel> listAll = [
  jobmodel(
      love: false,
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
      title: 'UX/UI Designer'),
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
      title: 'Front  End '),
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
      title: 'Flutter Developer'),
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
      title: 'Front  End '),
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
      title: 'UX/UI Designer'),
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
      title: 'Front  End '),
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
      title: 'UX/UI Designer'),
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
      title: 'Front  End '),
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
      title: 'UX/UI Designer'),
];
final List<jobmodel> listDesign = [
  jobmodel(
      love: false,
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
      price: '\$65,000 - \$124,000 / Year',
      subtitle: 'Apple, llc',
      title: 'UX/UI Designer'),
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Facbook.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Full-Time',
      place: 'California, USA',
      price: '\$80,000 - \$124,000 / Year',
      subtitle: 'Facebook, llc',
      title: 'UX/UI Designer'),
];
final List<jobmodel> listFinanace = [
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Facbook.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Full-Time',
      place: 'California, USA',
      price: '\$55,000 - \$124,000 / Year',
      subtitle: 'Google Design Team, llc',
      title: 'Finance'),
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Apple - icon.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Remote',
      place: 'Riyadh, Saudi Arabia',
      price: '\$65,000 - \$124,000 / Year',
      subtitle: 'Apple, llc',
      title: 'Finance'),
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Facbook.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Full-Time',
      place: 'California, USA',
      price: '\$80,000 - \$124,000 / Year',
      subtitle: 'Facebook, llc',
      title: 'Finance'),
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
      title: 'Finance'),
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Apple - icon.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Remote',
      place: 'Riyadh, Saudi Arabia',
      price: '\$65,000 - \$124,000 / Year',
      subtitle: 'Apple, llc',
      title: 'Finance'),
];
final List<jobmodel> listSoftwareEnginner = [
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Apple - icon.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Full-Time',
      place: 'California, USA',
      price: '\$55,000 - \$124,000 / Year',
      subtitle: 'Google Design Team, llc',
      title: 'Software Development'),
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Apple - icon.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Remote',
      place: 'Riyadh, Saudi Arabia',
      price: '\$65,000 - \$124,000 / Year',
      subtitle: 'Apple, llc',
      title: 'Software Development'),
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Facbook.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Full-Time',
      place: 'California, USA',
      price: '\$80,000 - \$124,000 / Year',
      subtitle: 'Facebook, llc',
      title: 'Software Development'),
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
      title: 'Software Development'),
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Apple - icon.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Remote',
      place: 'Riyadh, Saudi Arabia',
      price: '\$65,000 - \$124,000 / Year',
      subtitle: 'Apple, llc',
      title: 'Software Development'),
  jobmodel(
      love: false,
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Apple - icon.png'),
      ),
      hourc: 'Fixed hours',
      work: 'Remote',
      place: 'Riyadh, Saudi Arabia',
      price: '\$65,000 - \$124,000 / Year',
      subtitle: 'Apple, llc',
      title: 'Software Development'),
];
