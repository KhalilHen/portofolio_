import 'package:flutter/material.dart';

import 'package:Khalil/dialogs/image_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:Khalil/l10n/l10n.dart';
import 'package:google_fonts/google_fonts.dart';  //fonts

class Project1 extends StatelessWidget {
  final textColor = const Color(0xFFE0E0E0);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 800;
    // final List<String> imgList = [
    //   'assets/images/homepage_dinner_app.jpg',
    //   'assets/images/index.png',
    //   'assets/images/image3.jpg',
    // ];


    AppLocalizations l10n = AppLocalizationsX(context).l10n; //Localization

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: isMobile ? 600 : 300,
        width: screenWidth > 1400 ? 1300 : screenWidth * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: isMobile
            ? Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () async {
                        await showDialog(context: context, builder: (_) => ImageDialog());
                      },
                      child: Image.asset(
                        '/images/dinner/login.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color(0xFF333333),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Title Section
                           Text(
                            l10n.projectTitle1,
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24,
                              letterSpacing: 0.5,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF4A4A4A),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Flutter',
                                      style: TextStyle(color: Colors.white70, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF4A4A4A),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Firebase',
                                      style: TextStyle(color: Colors.white70, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          // Description Section
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              child:  SingleChildScrollView(
                                child:  Text(
                                l10n.projectDescription1,

                                  style: GoogleFonts.openSans(
                                    color: Colors.white70,
                                    height: 1.5,
                                    fontWeight: FontWeight.w300,
                                    
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Footer with Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              
                              InkWell(
                                onTap: () {
                                  // Add your URL here
                                  launch('https://github.com/KhalilHen/dinner_app_flutter');
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white30),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.code, color: Colors.white70, size: 18),
                                      SizedBox(width: 8),
                                      Text(
                                        'Github',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Row(
              
                children: [
               
                  Expanded(
                    flex: 1,
                    child: Container(
                      // color: Colors.grey[100], // Neutral background
                      // color: const Color(0xFF333333),
                      // color: Color(0xFFE0CDB4),
                      // color: Colors.white,
                      // color: Colors.transparent,
                      decoration: const BoxDecoration(
                          // color: Color(0x80000000), // Example: soft transparent gray.

                          // color: Color(0x80F5EAD7) // 50% opacity warm beige.
                          // color: Color(0x80FFFFFF) // 50% opacity white.
                          // color: Color(0x80BDBDBD) // 50% opacity light gray.
                          // color: Color(0x80000000) // 50% opacity black (neutral gray).
                          // color: Color(0x80000000) // 50% opacity black (neutral gray).

                          color: Color(0x80F5EAD7) // 50% opacity warm beige.
                          // color: Color(0x80FFFFFF) // 50% opacity white.
                          // color: Color(0x80BDBDBD) // 50% opacity light gray.

                          ),
                      // color: Color(0x80000000) // 50% opacity black (neutral gray).
                      // ,
                      child: InkWell(
                        onTap: () async {
                          await showDialog(context: context, builder: (_) => ImageDialog());
                        },
                        child: Center(
                          child: Image.asset(
                            '/images/dinner/homepage.jpg',
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //  Expanded(
                  //       flex: 1,
                  //       child: InkWell(
                  //           onTap: () async {
                  //             await showDialog(context: context, builder: (_) => ImageDialog());
                  //           },
                  //           child: Container(
                  //             decoration: BoxDecoration(
                  //               gradient: LinearGradient(
                  //                 begin: Alignment.topCenter,
                  //                 end: Alignment.bottomCenter,
                  //                 colors: [
                  //                   Colors.transparent,
                  //                   Colors.black.withOpacity(0.7),
                  //                 ],
                  //               ),
                  //               image: DecorationImage(
                  //                 image: AssetImage('/images/homepage_dinner_app.jpg'),
                  //                 fit: BoxFit.contain,
                  //               ),
                  //             ),
                  //           )),
                  //     ),
                  // Text section
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color(0xFF333333),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Title Section
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                            l10n.projectTitle1,

                                style: GoogleFonts.lato(
                                  
                                  
                                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24, letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF4A4A4A),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Flutter',
                                      style: TextStyle(color: Colors.white70, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF4A4A4A),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Firebase',
                                      style: TextStyle(color: Colors.white70, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8),

                          // Description Section
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              child:  Text(
                                l10n.projectDescription1,

                                style: GoogleFonts.openSans(
                                  color: Colors.white70,
                                    // color: textColor,
                                       fontWeight: FontWeight.w300,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),

                          // Footer with Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Container(
                              //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              //   decoration: BoxDecoration(
                              //     border: Border.all(color: Colors.white30),
                              //     borderRadius: BorderRadius.circular(8),
                              //   ),
                              //   child: const Row(
                              //     mainAxisSize: MainAxisSize.min,
                              //     children: [
                              //       Icon(Icons.language, color: Colors.white70, size: 18),
                              //       const SizedBox(width: 8),
                              //       Text(
                              //         'Website',
                              //         style: const TextStyle(
                              //           color: Colors.white70,
                              //           fontSize: 14,
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              InkWell(
                                onTap: () {
                                  // Add your URL here
                                  launch('https://github.com/KhalilHen/dinner_app_flutter');
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white30),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.code, color: Colors.white70, size: 18),
                                      SizedBox(width: 8),
                                      Text(
                                        'Github',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

//
