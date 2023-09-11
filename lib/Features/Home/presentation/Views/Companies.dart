import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/companymodel.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/Boxcompanye.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/savedJob.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/savedjob/saved_job_cubit.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class companies extends StatefulWidget {
  const companies({super.key});

  @override
  State<companies> createState() => _companiesState();
}

class _companiesState extends State<companies> {
  final List<companymodel> list=[
    companymodel(
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Googleicon.png'),
      ),
      subtitle: 'Egypt, Africa Region',
      title: 'Google', recomment: true),
    companymodel(
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Apple - icon.png'),
      ),
      subtitle: 'UK, Europe Region',
      title: 'Apple', recomment: true),
    companymodel(
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Facbook.png'),
      ),
      subtitle: 'USA, Global Region',
      title: 'FaceBook', recomment: true),
    companymodel(
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Googleicon.png'),
      ),
      subtitle: 'Egypt, Africa Region',
      title: 'Google', recomment: true),
    companymodel(
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Apple - icon.png'),
      ),
      subtitle: 'UK, Europe Region',
      title: 'Apple', recomment: true),
    companymodel(
      preimaryIocn: const Image(
        image: AssetImage('assets/images/Facbook.png'),
      ),
      subtitle: 'USA, Global Region',
      title: 'FaceBook', recomment: true),
  ];

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<SavedJobCubit>(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocBuilder<SavedJobCubit, SavedJobState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          cubit.removeall();
                        },
                        child: const Text(
                          'Remove All',
                          style: TextStyle(color: kcolor, fontSize: 15),
                        )),
                    const SizedBox(
                      width: 70,
                    ),
                    const Text(
                      'Companies',
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
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (data) {
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
                        border: Border.all(color: Colors.black.withOpacity(0.5)),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color(0xffCFDDFB),
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.sliders,
                              color: kcolor,
                            )),
                      ),
                    )
                  ],
                ),
               Expanded(child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: list.length,
              itemBuilder: (context,index)=>boxcompany(model: list[index],)))
          
              ],
            );
          },
        ),
      ),
    );
  }
}
