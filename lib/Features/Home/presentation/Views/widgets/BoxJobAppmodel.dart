import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/Data/models/jopAppModel.dart';

class customBoxJopApp extends StatelessWidget {
  const customBoxJopApp({super.key,required this.model});
   final Appmodel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 170,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xffCFDDFB).withOpacity(0.4),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey, width: 2)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              model.preimaryIocn,
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    model.title,
                    style:const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(
                    model.subtitle,
                    style:const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xffA4C1FC),
                        fontWeight: FontWeight.w400),
                  ),
                   Text(
                    model.subtitle1,
                    style:const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Color(0xffA4C1FC),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    model.data,
                    style:const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Color(0xffCFDDFB),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 26,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffFFE7E7),
                      border: Border.all(
                      color: Color(0xffDC3545),
                      width: 2
                    )),
                    child:const Center(child: Text('REJECTED',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Color(0xffDC3545),
                        fontWeight: FontWeight.w400),
                  ),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
