import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:portofolio/components/projects/projects.dart';
import 'package:portofolio/controllers/carouselSlider_controller.dart';
import 'package:portofolio/components/projects/project1.dart';
import 'package:portofolio/components/projects/project3.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();

  var textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 700;
    return Scaffold(
      //TODO Change it later to display mobile

      drawer: isMobile
          ? Drawer(
              backgroundColor: const Color(0xff2B2B2B),
              width: screenWidth * 0.5,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(10)),
                  ListTile(
                    leading: const Icon(Icons.person, color: Colors.white),
                    title: const Text('About Me', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pop(context);
                      Scrollable.ensureVisible(
                        _aboutMeKey.currentContext!,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.work, color: Colors.white),
                    title: const Text('Experience', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pop(context);
                      Scrollable.ensureVisible(
                        _experienceKey.currentContext!,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  ListTile(
                    //TODO Adjust later to the github icon
                    // icon: MdiIcons.github,

                    leading: const Icon(Icons.code, color: Colors.white),
                    title: const Text('Projects', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.pop(context);
                      Scrollable.ensureVisible(
                        _projectsKey.currentContext!,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            )
          : null,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1A1A),
        title: const Text(
          'Khalil ',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: isMobile
            ? null
            : <Widget>[
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
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      _experienceKey.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const Text(
                    'Experience',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      _projectsKey.currentContext!,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOutCubic,
                    );
                  },
                  child: const Text(
                    'Projects',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
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
              const Padding(padding: EdgeInsets.all(50)),

              // Welcome Container
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 40,
                  vertical: isMobile ? 30 : 50,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center, // Align text to left
                  children: [
                    // Main greeting - single line
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Hi, I am Khalil',
                        style: TextStyle(
                          fontSize: isMobile ? 32 : 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                    ),
                    SizedBox(height: isMobile ? 16 : 24),

                    // Description text
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: isMobile ? screenWidth * 0.85 : 600,
                      ),
                      child: Text(
                        'A Software Developer student at ROC-Nijmegen. Currently in my 3rd year of my 4-year study.',
                        style: TextStyle(
                          fontSize: isMobile ? 16 : 20,
                          color: Colors.white.withOpacity(0.9),
                          height: 1.5,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 160,
              ),

              //About me sections

              isMobile
                  ? SizedBox(
                      height: 300,
                      child: Column(
                        key: _aboutMeKey,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'About me',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: isMobile ? 32 : 48,
                            ),
                          ),
                          Container(
                            // width: 150,
                            // height: 150,
                            width: 130,
                            height: 130,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage('/images/me.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Hi, I am Khalil, and I am currently studying Software Developer (SD) at ROC Nijmegen in the Netherlands.',
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: textColor,
                                fontSize: isMobile ? 16 : 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Row(
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
                                image: AssetImage('/images/me.jpg'),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter, // Align the image to the top
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
                                  'Hi, I am Khalil, and I am currently studying Software Developer (SD) at ROC Nijmegen in the Netherlands.',
                                  style: TextStyle(fontSize: 15, color: Colors.white),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
              const SizedBox(
                height: 60,
              ),
              //experience

              isMobile
                  ? Container(
                      key: _experienceKey,
                      height: 300,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Experience',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            softWrap: true,
                            textAlign: TextAlign.center,
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
                    )
                  : Row(
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
                                          ' But to get the the best idea of my skills check my projects and my github page   click here',
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

              //TODO Improve later the Experience structure z
              isMobile
                  ? Container(
                      width: 250,
                      child: Center(
                        child: Wrap(
                          spacing: 16.0,
                          runSpacing: 16.0,
                          alignment: WrapAlignment.center,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(
                                  '/images/icons/react1.svg',
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 8.0),
                                Text('React', style: TextStyle(color: textColor)),
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  '/images/icons/firebase.svg',
                                  height: 50,
                                  width: 50,
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
                                  height: 50,
                                  width: 50,
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
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 12.0),
                                Text('Flutter', style: TextStyle(color: textColor)),
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  '/images/icons/java-log.svg',
                                  height: 50,
                                  width: 50,
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
                                  height: 50,
                                  width: 50,
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
                                  height: 50,
                                  width: 50,
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
                                  height: 50,
                                  width: 50,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(
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

              Padding(padding: EdgeInsets.all(75)),

              //project container
              Container(
                key: _projectsKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Projects',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        )),
                    Padding(padding: EdgeInsets.all(25)),

                    //project instance
                    Projects(),
                    Padding(padding: EdgeInsets.all(25)),

                    Project1(),
                    Padding(padding: EdgeInsets.all(25)),
                    Project3(),
                    // CarouselSliderController()
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(25)),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   color: Color(0xFF1A1A1A),
      // ),
    );
  }
}
