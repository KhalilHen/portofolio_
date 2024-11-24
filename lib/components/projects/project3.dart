import 'package:flutter/material.dart';

import 'package:portofolio/dialogs/image_3.dart';
import 'package:url_launcher/url_launcher.dart';

class Project3 extends StatelessWidget {
  final textColor = const Color(0xFFE0E0E0);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 800;

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
                        '/images/index.png',
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
                          const Text(
                            'Geoprofs',
                            style: TextStyle(
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
                                      'React',
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
                                      'Laravel',
                                      style: TextStyle(color: Colors.white70, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              //   margin: const EdgeInsets.only(right: 8),
                              //   decoration: BoxDecoration(
                              //     color: const Color(0xFF4A4A4A),
                              //     borderRadius: BorderRadius.circular(20),
                              //   ),
                              //   child: const Row(
                              //     mainAxisSize: MainAxisSize.min,
                              //     children: [
                              //       Text(
                              //         'School Project',
                              //         style: TextStyle(color: Colors.white70, fontSize: 12),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),

                          // Description Section
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              child: SingleChildScrollView(
                                child: const Text(
                                  'Geoprofs is  a  leave system  for a  fictiv  geodesy bureau company  that use currently excel for there leave system' +
                                      'Were we have to create a application, that fills his needs. The application is made with React and Laravel. The application is still in development',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Footer with Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // SizedBox(width: 20),
                              InkWell(
                                onTap: () {
                                  // Add your URL here
                                  launch('https://github.com/KhalilHen/front-end-Geoprofs-LJ3/tree/main');
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                        onTap: () async {
                          //TODO Tempoary disabled
                          await showDialog(context: context, builder: (_) => ImageDialog());
                          null;
                        },
                        child: Image.asset(
                          'assets/images/index.png',
                          fit: BoxFit.cover,
                        )),
                  ),

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
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Geoprofs  (In  Development) ',
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24, letterSpacing: 0.5),
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
                                      'React',
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
                                      'Laravel',
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
                              child: const Text(
                                'Geoprofs is  a  leave system  for a  fictiv  geodesy bureau company  that use currently excel for there leave system' +
                                    'Were we have to create a application, that fills his needs. The application is made with React and Laravel. The application is still in development',
                                style: TextStyle(
                                  color: Colors.white70,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),

                          // Footer with Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // SizedBox(width: 20),
                              InkWell(
                                onTap: () {
                                  // Add your URL here
                                  launch('https://github.com/KhalilHen/front-end-Geoprofs-LJ3/tree/main');
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
