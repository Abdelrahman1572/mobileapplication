import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobileapp/modules/Lectures/Lectures_screens.dart';
import 'package:mobileapp/modules/aboutas/aboutas_screen.dart';
import 'package:mobileapp/modules/questions/questions_screen.dart';
import 'package:mobileapp/shared/Cubit/States.dart';


class MobileCubit extends Cubit<MobileStates> {
  MobileCubit() : super(MobileInitialState());

  static MobileCubit get(context) => BlocProvider.of(context);

  int currentindex = 0;

  List<String> tittle = [
    'Lectures',
    'Questions',
    'About As',
  ];

  List<Widget> bottomScreens = [
    LecturesScreen(),
    QuestionsScreen(),
    AboutAsScreen(),
  ];

  void changeBottomNavBar(int index) {
    currentindex = index;
    emit(MobileChangeBottomNavBarState());
  }


}
