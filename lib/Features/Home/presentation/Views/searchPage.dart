import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/Jobmodle.dart';
import 'package:flutter_application_1/Features/Home/Data/models/jopAppModel.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/BoxJobAppmodel.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/infromationJob.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/recenttype.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/cubit/recent_jopmanage_cubit.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPagepageState();
}

class _searchPagepageState extends State<searchPage> {
  final List<jobmodel> listApplication = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const back(),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(height: 0.9),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const searchPage()));
                      },
                      onChanged: (data) {},
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xffCFDDFB),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          hintText: 'UX/UI Designer',
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
                      border: Border.all(color: Colors.black.withOpacity(0.5)),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xffCFDDFB),
                    ),
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const searchPage()));
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
                height: 20,
              ),
              BlocBuilder<RecentJopmanageCubit, RecentJopmanageState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const Icon(FontAwesomeIcons.sliders),
                        SizedBox(
                          width: 10,
                        ),
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
                            text: 'Jobs'),
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
                            width: 100,
                            text: 'Date Posted'),
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
                            width: 150,
                            text: 'Experience Level'),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                '152 Result Found',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: ListView.builder(
                      itemCount: listApplication.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          Jobinformation(model: listApplication[index])))
            ]),
          ),
        ),
      ),
    );
  }
}
