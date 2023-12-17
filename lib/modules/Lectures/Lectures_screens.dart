import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobileapp/modules/lectures_details/chapter1_details.dart';
import 'package:mobileapp/modules/lectures_details/chapter2_details.dart';
import 'package:mobileapp/shared/Cubit/Cubit.dart';
import 'package:mobileapp/shared/Cubit/States.dart';
import 'package:mobileapp/shared/component/Components.dart';



class LecturesScreen extends StatelessWidget {
  const LecturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileCubit,MobileStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = MobileCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                         NavigateReplacement(context, Chapter1DetailsScreen());
                        },
                        child: Container(
                          width: 250,
                          height: 170,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/ch1.jpg',),fit: BoxFit.fill) ,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 3,)
                        ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          NavigateReplacement(context, Chapter2DetailsScreen());
                        },
                        child: Container(
                          width: 250,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/ch2.jpg'),fit: BoxFit.fill),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 3)
                          ),
                        ),
                      ),
                    )
                  ],),
              ],
            ),
          ),
        );
      },
    );
  }
}
