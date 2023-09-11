import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/Jobmodle.dart';
import 'package:flutter_application_1/Features/Home/Data/models/companymodel.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/savedjob/saved_job_cubit.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class boxcompany extends StatefulWidget {
  const boxcompany({
    super.key,
    required this.model,
  });
  final companymodel model;

  @override
  State<boxcompany> createState() => _JobinformationState();
}

class _JobinformationState extends State<boxcompany> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,top: 10),
      child: Container(
        height: 210,
        width: 370,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SizedBox(
            width: 350,
            child: Column(
              children: [
                SizedBox(
                  width:350,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey)),
                            child: widget.model.preimaryIocn,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.model.title,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.model.subtitle,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              )
                            ],
                          ),
                        const  SizedBox(
                            width: 100,
                          ),
                          IconButton(
                              onPressed: () {setState(() {
                              });
                              },
                              icon:Icon(FontAwesomeIcons.xmark,color: Colors.black,),)
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 1,
                  endIndent: 0,
                  indent: 0,
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.star,color: kcolor,),
                            SizedBox(
                              width: 20,
                            ),
                            Text('3.2 Stars (506487)',style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.user,color: kcolor,),
                            SizedBox(
                              width: 20,
                            ),
                            Text('512 Employee',style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500
                            ),)
                          ],
                        ) ,SizedBox(
                          height: 10,
                        )
                      ,Row(
                          children: [
                            Icon(FontAwesomeIcons.bagShopping,color: kcolor,),
                            SizedBox(
                              width: 20,
                            ),
                            Text('4 Jobs Available',style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500
                            ),)
                          ],
                        )
                      
                      ],
                    ),
                  Spacer(),
                IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_right,size: 50,))
                ],
              )
                ],
            ),
          ),
        ),
      ),
    );
  }
}
