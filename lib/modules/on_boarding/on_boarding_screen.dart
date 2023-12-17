import 'package:flutter/material.dart';
import 'package:mobileapp/layouts/Mobile/mobile_layout.dart';
import 'package:mobileapp/shared/component/Components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String title;
  final Widget body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardingController = PageController();
  bool isLast = false;


  List<BoardingModel> boarding = [
    BoardingModel(
      title: 'Objectives of Mobile applications',
      image: 'assets/images/app-removebg-preview.png',
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('1- Offer Significant Value to Users',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('2- Ensure an Intuitive User Experience',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('3- Offer Significant Value to Users',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('4- Monetization and Sustainability',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('5- Data Collection and Analysis',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('6- Framework for Mobile Application Development',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('7- Flutter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('8- ReactNative',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
        ]
        ,),
    ),
    BoardingModel(
      title: 'Goals of Mobile applications',
      image: 'assets/images/images.png',
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('1- Cross-Platform Compatibility',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('2- User Interface (UI) Design',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('3- Performance Optimization',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('4- Battery Efficiency',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('5- Responsive Design',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('6- Security',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('7- Offline Functionality',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('8- Integration with Device Features',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
        ]
        ,),
    ),
    BoardingModel(
      title: 'Content of Mobile Porogramming',
      image: 'assets/images/app5.png',
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('1- Cross-Platform Compatibility',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('2- User Interface (UI) Design',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('3- Performance Optimization',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('4- Battery Efficiency',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('5- Responsive Design',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('6- Security',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('7- Offline Functionality',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
          SizedBox(height:12,),
          Text('8- Integration with Device Features',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 1),
        ]
        ,),
    )
  ];
  void sumbit() {
   NavigateAndFinish(context, MobileApp());
  }

  @override
  Widget build(BuildContext context) {
    var height=  MediaQuery.of(context).size.height;
    var width=  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: sumbit,
                child: const Text('Skip', style: TextStyle(fontSize: 20),)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: boardingController,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  }
                  else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) => buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardingController,
                  count: boarding.length,
                  effect: const ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.blueGrey,
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5,
                  ),
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if (isLast) {
                      sumbit();
                    }
                    else {
                      boardingController.nextPage(
                          duration: const Duration(milliseconds: 750),
                          curve: Curves.fastEaseInToSlowEaseOut);
                    }
                  },
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset(model.image,fit: BoxFit.fill,),),
          const SizedBox(
            height: 25,
          ),
          Text(
            model.title,
            style: const TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
            maxLines: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(child: model.body,),
        ],
      );
}
