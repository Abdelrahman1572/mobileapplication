import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('About Application',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 10,
            ),
            Text(
              'This Application will be used to manage the Mobile Programming using Flutter course by deviding the course\'s book into organized sections and it\'s Questions for students to access and use.',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 20, height: 1.45),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Team Members',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => buildTeamData(teamData[index]),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemCount: teamData.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildTeamData(AboutAsModel model) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(model.image),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(model.name,
            style: TextStyle(fontSize: 20, height: 0.5),
            textAlign: TextAlign.center),
      ],
    ));
