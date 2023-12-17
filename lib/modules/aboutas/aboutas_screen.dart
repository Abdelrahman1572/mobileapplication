import 'package:flutter/material.dart';
import 'package:mobileapp/shared/component/Components.dart';

class AboutAsModel {
  final String image;
  final String name;

  AboutAsModel({
    required this.name,
    required this.image,
  });
}

class AboutAsScreen extends StatelessWidget {
  AboutAsScreen({super.key});

  List<AboutAsModel> teamData = [
    AboutAsModel(
      name: 'Abdelhady Mohamed',
      image: 'assets/images/abdelhady.jpg',
    ),
    AboutAsModel(
      name: 'Alaa Mobark',
      image: 'assets/images/alaa.jpg',
    ),
    AboutAsModel(
      name: 'Hazem Abdelsatar',
      image: 'assets/images/hazem.jpg',
    ),
    AboutAsModel(
      name: 'Marawan Wannan',
      image: 'assets/images/wannan.jpg',
    ),
    AboutAsModel(
      name: 'Mohamed Rady',
      image: 'assets/images/rady.jpg',
    ),
    AboutAsModel(
      name: 'Mohamed Osama',
      image: 'assets/images/osama.jpg',
    ),
    AboutAsModel(
      name: 'Mostafa Mahmoud',
      image: 'assets/images/mostafa.jpg',
    ),
    AboutAsModel(
      name: 'Abdelrahman Ashraf',
      image: 'assets/images/abdelrahman.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => buildTeamData(teamData[index]),
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: teamData.length,
      ),
    );
  }
}

Widget buildTeamData(AboutAsModel model) => Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(model.image),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(model.name, style: TextStyle(fontSize: 20,height: 0.5), textAlign: TextAlign.center),
        ],
      )
    );


