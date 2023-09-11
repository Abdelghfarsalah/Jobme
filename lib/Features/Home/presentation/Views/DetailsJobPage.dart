import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/Jobmodle.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/home.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/informationJobindetails.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/infromationJob.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/manageDetails.dart/manag_details_cubit.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/containerback.dart';
import 'package:flutter_application_1/Features/RegisterandLogin/presentation/views/widgets/selectExperiance.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/widget/custombuttonNoarrow.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class detailspage extends StatefulWidget {
  const detailspage({
    super.key,
    required this.model,
  });
  final jobmodel model;

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {
  bool select = true;

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ManagDetailsCubit>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const back(),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  'Job Details',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Color(0xff343A40)),
                ),
                const SizedBox(
                  width: 49,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/Vector (1).png')),
                const Icon(FontAwesomeIcons.paperPlane),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Jobinformationdetails(model: widget.model),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                BlocBuilder<ManagDetailsCubit, ManagDetailsState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        SizedBox(
                            height: 50,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (cubit.cuurrentindex != 0) {
                                        cubit.changeindex(index: 0);
                                      }
                                    },
                                    child: Container(
                                      decoration: cubit.cuurrentindex == 0
                                          ? const BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: kcolor, width: 2)))
                                          : null,
                                      child: Center(
                                        child: Text(
                                          'Job Description',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            height: 2,
                                            color: cubit.cuurrentindex == 0
                                                ? kcolor
                                                : Color(0xffE0E0E0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (cubit.cuurrentindex != 1) {
                                        cubit.changeindex(index: 1);
                                      }
                                    },
                                    child: Container(
                                      decoration: cubit.cuurrentindex == 1
                                          ? const BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: kcolor, width: 2)))
                                          : null,
                                      child: Center(
                                        child: Text(
                                          'Qualifications',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            height: 2,
                                            color: cubit.cuurrentindex == 1
                                                ? kcolor
                                                : Color(0xffE0E0E0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (cubit.cuurrentindex != 2) {
                                        cubit.changeindex(index: 2);
                                      }
                                    },
                                    child: Container(
                                      decoration: cubit.cuurrentindex == 2
                                          ? const BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: kcolor, width: 2)))
                                          : null,
                                      child: Center(
                                        child: Text(
                                          'Benefits',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            height: 2,
                                            color: cubit.cuurrentindex == 2
                                                ? kcolor
                                                : Color(0xffE0E0E0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: ListView(
                              physics: const BouncingScrollPhysics(),
                              children: [
                                cubit.list[cubit.cuurrentindex],
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.3,
                    child: custombuttonnoarrow(
                        name: 'Apply',
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              elevation: 15,
                              title: Column(
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          'assets/images/Success Icon.png')),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Done!',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Poppins',
                                        color: Color(0xff343A40)),
                                  ),
                                  const Text(
                                    'Your Application Submitted !',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        color: Color(0xff6C757D)),
                                  ),
                                  const Text(
                                    'Successfully',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        color: Color(0xff6C757D)),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const homepage(),
                                          ),
                                          (Route) => false);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(),
                                      height: 48,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: const Center(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Application Page',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                height: 1.2,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              actions: [],
                            ),
                          );
                        },
                        width: MediaQuery.of(context).size.width * 0.9))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
