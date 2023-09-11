import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/Profile.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/savedPage.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/homebody.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/bottomnavbar/manage_bottomnav_cubit.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ManageBottomnavCubit>(context);
    return BlocConsumer<ManageBottomnavCubit, ManageBottomnavState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          body:cubit.list[cubit.currentIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
            ),
            child: BottomNavigationBar(
              elevation: 10,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                if(index==4)
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                }else{
                cubit.changeindex(index: index);
                }
              },
              showSelectedLabels: true,
              selectedItemColor: kcolor,
              items: const [
                BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    )),
                BottomNavigationBarItem(
                    label: 'Saved',
                    icon: Icon(
                      FontAwesomeIcons.bookmark,
                      color: Colors.grey,
                    )),
                BottomNavigationBarItem(
                    label: 'Applications',
                    icon:
                        Icon(FontAwesomeIcons.bagShopping, color: Colors.grey)),
                BottomNavigationBarItem(
                    label: 'Companies',
                    icon: Icon(
                      FontAwesomeIcons.building,
                      color: Colors.grey,
                    )),
                BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      FontAwesomeIcons.user,
                      color: Colors.grey,
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
