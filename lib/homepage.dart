import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portofolio/components/projects.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();

  var textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1A1A),
        title: const Text(
          'Khalil ',
          style: TextStyle(color: Colors.white),
        ),

        //TODO fix that this later goes  behind the title
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Scrollable.ensureVisible(
                  _aboutMeKey.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: const Text(
                'About me',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Experience',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Projects',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: const Color(0xff2B2B2B),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
     

              const SizedBox(
                height: 430,
              ),
              Row(
                key: _aboutMeKey,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('/images/sensei-sushi.png'),
                          fit: BoxFit.cover,
                        )),
                  ),

                  const SizedBox(width: 20),

                  //Text container

                  Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('About me', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
                        const SizedBox(height: 10),
                        Container(
                          width: 300, // Adjust width as needed
                          child: const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    key: _experienceKey,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //experiernce

                        const Text(
                          'Experience',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        Container(
                          width: 400,
                          child: const Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(
                                'Here under i have listed different langeauages and frameworks i have worked with, and other programs/engines. ' +
                                    '   But to get the the best idea of my skills check my projects and my github page   click here',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Wrap(
                      children: [],
                    ),
                  )
                ],
              ),
              Container(
                width: 500,
                child: Center(
                  child: Wrap(
                    spacing: 16.0, // Space between items horizontally
                    runSpacing: 16.0, // Space between rows vertically
                    alignment: WrapAlignment.center,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(
                            '/images/icons/react1.svg',
                            height: 65,
                            width: 65,
                          ),

                          SizedBox(height: 8.0), // Spacing between image and text
                          Text('React', style: TextStyle(color: textColor)),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            '/images/icons/firebase.svg',
                            width: 65,
                            height: 65,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'React',
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            '/images/icons/laravel-color.svg',
                            width: 65,
                            height: 65,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Laravel',
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            '/images/icons/flutter-color.svg',
                            width: 65,
                            height: 65,
                          ),
                          SizedBox(height: 12.0),
                          Text('Flutter', style: TextStyle(color: textColor)),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            '/images/icons/java-log.svg',
                            width: 65,
                            height: 65,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'Java',
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            // '/images/angular-color.svg',
                            '/images/icons/angular-icon.svg',
                            width: 65,
                            height: 65,
                          ),
                          const SizedBox(height: 12.0),
                          Text(
                            'Angular',
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            '/images/icons/unity-color.svg',
                            width: 65,
                            height: 65,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'Unity',
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            '/images/icons/godotengine-color.svg',
                            width: 65,
                            height: 65,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'Godot',
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            '/images//icons/arduino-color.svg',
                            width: 65,
                            height: 65,
                          ),
                          const SizedBox(height: 12.0),
                          Text(
                            'Arduino',
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //project container
              Container(
                height: 800,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Projects',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),

                    //project instance
                    Projects(),
                    Projects(),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(25)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),

        color: Color(0xFF1A1A1A),
        // backgroundColor: const
      ),
    );
  }
}
