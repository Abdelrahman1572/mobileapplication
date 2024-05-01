import 'package:flutter/material.dart';
import 'package:mobileapp/layouts/Mobile/mobile_layout.dart';
import 'package:mobileapp/shared/component/Components.dart';

class Chapter3DetailsScreen extends StatelessWidget {
  const Chapter3DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 2'),
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
              const Text('Introduction To Dart',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              const Center(child: Image(image: AssetImage('assets/images/dart.png'),width: 350,fit: BoxFit.fill,)),
              Text(
                '1- Dart is a general-purpose, high-level modern programming language which is originally developed by Google.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '2- Dart is a dynamic, class-based, object-oriented programming language with closure and lexical scope.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '3- Syntactically, it is quite similar to Java, C, and JavaScript.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '4- Dart is an open-source programming language which is widely used to develop the mobile application, modern web-applications, desktop application, and the Internet Of Things(IoT) using by Flutter framework.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Why Dart?',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              Text(
                '1- Dart is a platform-independent language and supports all operating systems such as Windows, Mac, Linux, etc.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '2- It is an open-source language, which means it available free for everyone. It comes with a BSD license and recognized by the ECMA standard.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '3- It is an object-oriented programming language and supports all features of oops such as inheritance, interfaces, and optional type features.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '4- Dart is very useful in building real-time applications because of its stability.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '5- Dart comes with the dar2js compiler which transmits the Dart code into JavaScript code that runs on all modern web browser.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '6- The stand-alone Dart VM permits Dart code to run in a command-line interface environment.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 15,
              ),

              const SizedBox(height: 7,),
            ],
          ),
        ),
      ),
    );
  }
}
