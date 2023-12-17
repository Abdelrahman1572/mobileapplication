import 'package:flutter/material.dart';
import 'package:mobileapp/layouts/Mobile/mobile_layout.dart';
import 'package:mobileapp/shared/component/Components.dart';

class Chapter1DetailsScreen extends StatelessWidget {
  const Chapter1DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 1'),
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
              const Text('Mobile Applications Development',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Mobile application development is the process ocreating software applications that run on amobile device, and a typical mobile applicationutilizes a network connection to work with remotecomputing resources. Hence, the mobiledevelopment process involves creating installablesoftware bundles (code, binaries, assets, etc.) , implementing backend services such as dataaccess with an API, and testing the application ontarget devices.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Mobile Applications And Device Platforms',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500),
                maxLines: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Mobile application development is the process ocreating software applications that run on amobile device, and a typical mobile applicationutilizes a network connection to work with remotecomputing resources. Hence, the mobiledevelopment process involves creating installablesoftware bundles (code, binaries, assets, etc.) , implementing backend services such as dataaccess with an API, and testing the application ontarget devices.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Tools for Building Mobile Apps',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500),
                maxLines: 1,
              ),
              const SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'There are four major development approaches when building mobile applications : ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 18, height: 1.45),
                  ),
                  const SizedBox(height: 10,),
                  Text('1- Native Mobile Applications',style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 18, height: 1.45),),
                  const SizedBox(height:12,),
                  Text('2- Cross-Platform Native Mobile Applications',style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 18, height: 1.45),),
                  const SizedBox(height:12,),
                  Text('3- Hybrid Mobile Applications',style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 18, height: 1.45),),
                  const SizedBox(height:12,),
                  Text('4- Progressive Web Applications',style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 18, height: 1.45),),
                ],
              ),
              const SizedBox(height: 15,),
              const Text('Native Mobile Applications',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 10,),
              Text(
                'Native mobile applications are written in the programming language and frameworks provided by the platform owner and running directly on theoperating system of the device such as iOS and Android.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const Image(image: AssetImage('assets/images/native.png')),
              Table(
            border: TableBorder.all(borderRadius: BorderRadius.circular(15)),
            children: [
              const TableRow(
                children: [
                  TableCell(
                    child: Center(
                      child: Text('Pros',style: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  TableCell(
                    child: Center(
                      child: Text('Cons',style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: TableCell(
                      child: Text('Best performance', style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18, height: 1.45,),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: TableCell(
                      child: Text('Higher costs when building and maintaining your app', style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18, height: 1.45),),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: TableCell(
                      child: Text('Direct access to device APIs', style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18, height: 1.45)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: TableCell(
                      child: Text('Multiple code-bases for each platform', style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18, height: 1.45),),
                    ),
                  ),
                ],
              ),
            ],
          ),
              const SizedBox(height: 20,),
              const Text('Hybrid Mobile Applications',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 10,),
              Text(
                'Hybrid mobile applications are built with standard web technologies - such as JavaScript, CSS, and HTML5 - and they are bundled as app installation packages. Contrary to the native apps, hybrid apps work on a (web container) which provides a browser runtime and a bridge for native device APIs via Apache Cordova or Ionic.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(height: 10,),
              Table(
                border: TableBorder.all(borderRadius: BorderRadius.circular(15)),
                children: [
                  const TableRow(
                    children: [
                      TableCell(
                        child: Center(
                          child: Text('Pros',style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w500)),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text('Cons',style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: TableCell(
                          child: Text('Shared code base between web and mobile apps', style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 18, height: 1.45,),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: TableCell(
                          child: Text('Lower performance compared to native apps', style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 18, height: 1.45),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: TableCell(
                          child: Text('Using web development skillset for building mobile apps', style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 18, height: 1.45)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: TableCell(
                          child: Text('Limited support for native device features', style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 18, height: 1.45),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Text(
                'Cross-Platform Applications',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500),
                maxLines: 1,
              ),
              const SizedBox(height: 10,),
              Text(
                'Cross-platform native mobile applications can be written in variety of different programming languages and frameworks, but they are compiled into a native application running directly on the operating system of the device.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, height: 1.45),
              ),
              const SizedBox(height: 7,),
              Center(child: const Image(image: AssetImage('assets/images/Crosplatform.png'),width: 350,fit: BoxFit.fill,)),
            ],
          ),
        ),
      ),
    );
  }
}
