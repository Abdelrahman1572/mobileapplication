import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobileapp/shared/Cubit/Cubit.dart';
import 'package:mobileapp/shared/Cubit/States.dart';
import 'package:mobileapp/shared/styles/icon_broken.dart';

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileCubit,MobileStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = MobileCubit.get(context);
        return  Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(cubit.tittle[cubit.currentindex]),
          ),
          body: MobileCubit.get(context).bottomScreens[cubit.currentindex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentindex,
            onTap: (index){
              MobileCubit.get(context).changeBottomNavBar(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(IconBroken.Category),label: 'Lectures'),
              BottomNavigationBarItem(icon: Icon(Icons.question_answer_rounded),label: 'Questions'),
              BottomNavigationBarItem(icon: Icon(IconBroken.Profile),label: 'About AS'),
            ],
          ),
        );
      },
    );
  }
}
