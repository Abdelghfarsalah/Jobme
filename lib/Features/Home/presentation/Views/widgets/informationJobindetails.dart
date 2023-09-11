import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/Jobmodle.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/DetailsJobPage.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/savedjob/saved_job_cubit.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Jobinformationdetails extends StatefulWidget {
  const Jobinformationdetails({
    super.key,
    required this.model,
  });
  final jobmodel model;
  @override
  State<Jobinformationdetails> createState() => _JobinformationState();
}

class _JobinformationState extends State<Jobinformationdetails> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,top: 10),
      child: Container(
        height: 310,
        width: 370,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width:350,
                  child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                            height: 9,
                          ),
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
                Text(
                  widget.model.place,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6C757D),
                      fontFamily: 'Poppins',
                      fontSize: 16),
                ),
                Text(
                  widget.model.price,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: kcolor,
                      fontFamily: 'Poppins',
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: Text(
                            widget.model.work,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff343A40),
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: Text(
                            widget.model.hourc,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff343A40),
                                fontFamily: 'Poppins',
                                fontSize: 16),
                          ),
                        )),

                  
                  ],
                ),
                const  SizedBox(
                    height: 30,
                    ),
                    
                const  Text('Posted 2 days ago, 3th Sep 2023',style:  TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6C757D),
                                fontFamily: 'Poppins',
                                fontSize: 12),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
