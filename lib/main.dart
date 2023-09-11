import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/bottomnavbar/manage_bottomnav_cubit.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/cubit/recent_jopmanage_cubit.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/manageDetails.dart/manag_details_cubit.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/savedjob/saved_job_cubit.dart';
import 'package:flutter_application_1/Features/Splash/presentation/Views/SplashView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Jopme());
}

class Jopme extends StatelessWidget {
  const Jopme({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider(create: (context) => RecentJopmanageCubit()),
      BlocProvider(create: (context) => ManageBottomnavCubit()),
      BlocProvider(create: (context) => ManagDetailsCubit()),

      BlocProvider(create: (context) => SavedJobCubit())
      ],
      child: MaterialApp(
        theme: ThemeData(
            
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent,
            ))),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
