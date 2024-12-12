import 'package:Khalil/components/projects/project1.dart';
import 'package:Khalil/components/projects/project3.dart';
import 'package:Khalil/components/projects/projects.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// import 'package:Khalil/components/projects/projects.dart';
import 'package:Khalil/controllers/carouselSlider_controller.dart';
// import 'package:Khalil/components/projects/project1.dart';
// import 'package:Khalil/components/projects/project3.dart';

//Local langeauages package
import 'package:url_launcher/url_launcher.dart';




import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:Khalil/l10n/l10n.dart';



import 'package:google_fonts/google_fonts.dart';  //fonts
//TODO Put this somewhere else
extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}


class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();


  var textColor = Colors.white;
  @override
  Widget build(BuildContext context) {


        AppLocalizations l10n = AppLocalizationsX(context).l10n;


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
                    title:  Text(
                      l10n.aboutMe,
                      
                       style:  TextStyle(color: Colors.white)),
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
                    title:  Text(l10n.experience, style: TextStyle(color: Colors.white)),
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
                    //TODO Adjust later to the github iconaa
                    // icon: MdiIcons.github,

                    leading: const Icon(Icons.code, color: Colors.white),
                    title:  Text('Projects', style: TextStyle(color: Colors.white,)),
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
                  child:  Text(
                      l10n.aboutMe,

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
                  child:  Text(
                    l10n.experience,
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
                       l10n.startText,
                        style: GoogleFonts.lato(
                          fontSize: isMobile ? 32 : 48,
                          fontWeight: FontWeight.bold,
                          color: textColor,
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
                        l10n.startSubtitle,
                      
                        style: GoogleFonts.openSans(
                          fontSize: isMobile ? 16 : 20,
                          color: Colors.white.withOpacity(0.9),
                          height: 1.5,
                    fontWeight: FontWeight.w300,
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
                  ? 
                  
                  SizedBox(
                      height: 550,
                      child: Column(
                        key: _aboutMeKey,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            // 'About me',
                            l10n.aboutMe,
                            style:  GoogleFonts.lato(
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

                                //TODO When re
                                image: AssetImage('assets/images/profile/me_0.jpg'),


                                fit: BoxFit.cover,
                              ),

                              // image: DecorationImage(
                              //   image: NetworkImage('https://via.placeholder.com/150'),
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                          SizedBox(height: 26),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                    l10n.aboutMeDescription,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                color: textColor,
                                fontSize: isMobile ? 16 : 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Row(
                      key: _aboutMeKey,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile/me_0.jpg'),

                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter, // Align the image to the center
                              scale: 1.5, // Zoom in the image
                              )),
                        ),
// 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'
                        // const SizedBox(width: 20),

                        //Text container

                        Container(
                          height: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               Text(l10n.aboutMe, 
                               
                               //TODO Change the font into a global variable
                               style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                               
                               
                               ),


                              const SizedBox(height: 10),
                              Container(
                                width: 320, // Adjust width as needed
                                     child: Text(
                                  l10n.aboutMeDescription,
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.openSans(
                                    color: textColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text(
                            l10n.experience,
                            style:  GoogleFonts.lato(
                              fontSize: isMobile ? 32 : 48,

                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                          // const Text(
                          //   softWrap: true,
                          //   textAlign: TextAlign.center,
                          //   'Below, I\'ve listed the various languages, frameworks, and tools I\'ve worked with. To get a clearer picture of my skills, check out my projects and GitHub page by clicking here',
                          //   style: TextStyle(
                          //     fontSize: 15,
                          //     fontWeight: FontWeight.bold,
                          //     color: Colors.white,
                          //   ),
                          // ),

                          RichText(
                            softWrap: true,
                            textAlign: TextAlign.center,
                            strutStyle: StrutStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                  l10n.experienceDescription,
                                     
                                  style: GoogleFonts.openSans(
                                    color: textColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: l10n.experienceDescriptionHyperLink,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launch('https://github.com/KhalilHen');
                                    },
                                ),
                              ],
                            ),
                          )
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

                              Text(
                               l10n.experience,
                                style: GoogleFonts.lato(
                                fontSize: 30,

                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              Container(
                                width: 400,
                                child: Wrap(
                                  alignment: WrapAlignment.center,
                                  children: [
                                    // Text(
                                    //   'Here under i have listed different langeauages and frameworks i have worked with, and other programs/engines. ' +
                                    //       ' But to get the the best idea of my skills check my projects and my github page   click here',
                                    //   style: TextStyle(
                                    //     fontSize: 15,
                                    //     fontWeight: FontWeight.bold,
                                    //     color: Colors.white,
                                    //   ),
                                    // ),

                                    RichText(
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      strutStyle: StrutStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                              l10n.experienceDescription,
                                            style: GoogleFonts.openSans(color: textColor,
                                              fontSize: 15,

                                              //TODO Collect feedback for this
                                             fontWeight:  FontWeight.w300,
                                             // fontWeight: FontWeight.normal,

                                            ),
                                          ),
                                          TextSpan(
                                            text: l10n.experienceDescriptionHyperLink,
                                            style: TextStyle(
                                              color: Colors.blue,
                                              decoration: TextDecoration.underline,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launch('https://github.com/KhalilHen');
                                              },
                                          ),
                                        ],
                                      ),
                                    )
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
                                SizedBox(height: 12.0),
                                Text('React', style: TextStyle(color: textColor)),
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  '/images/icons/firbase-color.svg',
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 12.0),
                                Text(
                                  'Firebase',
                                  style: TextStyle(color: textColor),
                                ),
                              ],
                            ),
                //TODO  Fix the laravel icon until that time commented out. 
                            // Column(
                            //   children: [
                            //     SvgPicture.asset(
                            //       '/images/icons/laravel-color.svg',
                            //       height: 50,
                            //       width: 50,
                            //     ),
                            //     SizedBox(height: 12.0),
                            //     Text(
                            //       'Laravel',
                            //       style: TextStyle(color: textColor),
                            //     ),
                            //   ],
                            // ),
                            Column(
                              children: [
                               FlutterLogo(
                                size: 50,
                                
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

                                  'assets/images/icons/godot_color.svg',
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(height: 12.0),
                                Text(
                                  'Godot',
                                  style: TextStyle(color: textColor),
                                )
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

                                SizedBox(height: 12.0), // Spacing between image and text
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
                                SizedBox(height: 13.0),
                                Text(
                                  'Firebase ',
                                  style: TextStyle(color: textColor),
                                ),
                              ],
                            ),
                            // Column(
                            //   children: [
                            //     SvgPicture.asset(
                            //       'assets/images/icons/laravel-color.svg',
                            //       width: 65,
                            //       height: 65,
                            //       // image: AssetImage('assets/images/me.jpg'),
                            //     ),
                            //     SizedBox(height: 12.0),
                            //     Text(
                            //       'Laravel',
                            //       style: TextStyle(color: textColor),
                            //     ),
                            //   ],
                            // ),
                            Column(
                              children: [
                              FlutterLogo(
                                size: 65,
                                
                              ),


                                SizedBox(height: 14.0),
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
                                  'assets/images/icons/godot_color.svg',
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
                    Text(l10n.project,
                        style: GoogleFonts.lato(
                          fontSize: 30,
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
                    // CarouselSliderController()import 'package:portofolio/components/projects/project1.dart';
                  
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(25)),

              //
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
