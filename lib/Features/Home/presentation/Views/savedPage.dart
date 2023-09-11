import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/Views/widgets/savedJob.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/savedjob/saved_job_cubit.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class savedpage extends StatelessWidget {
  const savedpage({super.key});

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
                      'Saved Jobs',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Color(0xff343A40)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'you have ${cubit.savedlist.length} jobs Saved',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff343A40)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: cubit.savedlist.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) =>
                            savedjob(model: cubit.savedlist[index])))
              ],
            );
          },
        ),
      ),
    );
  }
}
