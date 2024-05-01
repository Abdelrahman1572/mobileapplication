import 'package:flutter/material.dart';
import 'package:mobileapp/layouts/Mobile/mobile_layout.dart';
import 'package:mobileapp/shared/component/Components.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Chapter4DetailsScreen extends StatefulWidget {
  const Chapter4DetailsScreen({super.key});

  @override
  State<Chapter4DetailsScreen> createState() => _Chapter4DetailsScreenState();
}

// https://youtu.be/uvSrRBHtio8?si=Nn3eb2-nCLnf_MzL

class _Chapter4DetailsScreenState extends State<Chapter4DetailsScreen> {

  final videoUrl = 'https://youtu.be/fq4N0hgOWzU?si=Tj3gNeK_HwKIpDQS';
   YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 4'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              NavigateReplacement(context, const MobileApp());
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('What is Flutter?',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 15,
              ),
              const Center(
                  child: Image(
                image: AssetImage('assets/images/flutter1-removebg-preview.png'),
                width: 500,
                fit: BoxFit.fill,
              )),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: 'FByOExKRh9o',
                    flags: const YoutubePlayerFlags(
                      autoPlay: false,
                      mute: false,
                    ),
                  ),
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.blue,
                    handleColor: Colors.blueAccent,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Why you should learn Flutter?',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Image(
                    image: AssetImage('assets/images/adv_of_flutter-removebg-preview.png'),
                    width: 450,
                    fit: BoxFit.fill,
                  )),
              // Text(
              //   '1- Simple to learn and use : ',
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyLarge!
              //       .copyWith(fontSize: 18, height: 1.45),
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // Text(
              //   'Flutter is a modern framework, and you can feel it! It’s way simpler to createmobile applications with it. If you have used Java, Swift, or React Native, you\'ll notice how Flutter is different. you can create a real native application without a bunch of code.',
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyLarge!
              //       .copyWith(fontSize: 16, height: 1.45),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   '2- Quick compilation: maximum productivity',
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyLarge!
              //       .copyWith(fontSize: 18, height: 1.45),
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // Text(
              //   'you can change your code and see the results in real-time. It’s called Hot-Reload. It only takes a short amount of time after you save to update the application itself.',
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyLarge!
              //       .copyWith(fontSize: 16, height: 1.45),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   '3- Supported by Android Studio and VS Code : ',
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyLarge!
              //       .copyWith(fontSize: 18, height: 1.45),
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // Text(
              //   'Flutter is available on different IDEs. The two main code editors for developing with this technology are Android Studio and VS Code.',
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyLarge!
              //       .copyWith(fontSize: 16, height: 1.45),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              const Text('In Flutter',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 5,
              ),
              Text(
                'almost everything is a widget—even layout models are widgets. The images, icons, and text that you see in a Flutter app are all widgets. But things you don’t see are also widgets, such as the rows, columns, and grids that arrange, constrain, and align the visible widgets.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('MaterialApp Widget--Flutter',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 5,
              ),
              Text(
                'MaterialApp is the main or core component of a flutter app. The MaterialApp widget provides a wrapper around other Material Widgets. We can access all the other components and widgets provided by Flutter SDK.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
