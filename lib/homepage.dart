import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

//TODO Delete this if not needed
// import 'package:iconly/iconly.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // double get _appBarHeight => 56.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  usematerial3: true,

        backgroundColor: const Color(0xFF1A1A1A),
        title: const Text(
          'Portofolio page',
          style: TextStyle(color: Colors.white),
        ),

        //TODO fix that this later goes  behind the title
        actions: const <Widget>[
          TextButton(
              onPressed: null,
              child: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: null,
              child: Text(
                'About me',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: null,
              child: Text(
                'Experience',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: null,
              child: Text(
                'Projects',
                style: TextStyle(color: Colors.white),
              )),
          TextButton(
              onPressed: null,
              child: Text(
                'Contact',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      body: SingleChildScrollView(
//  axisDirection: AxisDirection.down,
        scrollDirection: Axis.vertical,

        child: Container(
          color: Color(0xff2B2B2B),
          width: double.infinity,

          // height: 200 * 5.0,
          height: MediaQuery.of(context).size.height * 2.0,
          child: Column(
            //think best space evenly then center,

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              Row(
//About me row containg Header text, and image square
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Contain for the profiel image
                  //TODO Adjust this later with correct form and size
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'data:image/jpeg;base64,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',
                          height: 100,
                        ),
                      ],
                    ),
                  ),

//Container for the About me text
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'About me',
                          style: TextStyle(
                            fontSize: 30,
                            //  fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        //When adding expanded the text dissapears
                        Container(
                          width: 400,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet. Aut fuga sint non alias voluptatem sed quibusdam consequatur aut quam dolores et quisquam vitae a possimus maxime rem velit ducimus! Sed',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

//TODO Temporary   disabled
//                  Wrap(

//                    children: [

// Text('CV',

//                                   style: TextStyle(
//                    fontSize: 20,
//                    fontWeight: FontWeight.bold,

//                    color: Colors.white ,
//                                   ),
//                                   softWrap: true,
//                                   ),
//                    ] ,
//                  ),
                ],
              ),
//The row for the image circle
//TODO Add more breahting space here between

// Row(

//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [

//  ClipOval(
//   //Later fix the image
// child: Image.asset('./images/boxing-day-celebration-with-gift.jpg',

// width: 100,
// height: 100,
// fit: BoxFit.cover,
// ),

//  ),

// Image(image: AssetImage('assets/images/IMG_20211010_123456.jpg'),),

//   ],
// ),

//Experience row

//Experience header
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //experiernce
                        Text(
                          'Experience',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        Container(
                          width: 400,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(
                                'The listed  frameworks/langeau are the ones i have worked with the past 3 years',
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

//Icons cont

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
                child: Wrap(

                    // mainAxisAlignment: MainAxisAlignment.center,
                    alignment: WrapAlignment.center,
                    children: [
                      Row(
                        children: [
//Here comes all the icon/logos
//TODO Make a  alt text when there is no image displaying
                          Column(
                            children: [
                              // SvgPicture.asset(
                              //   'assets/images/react-2.svg',
                              //   width: 100,
                              //   height: 100,
                              // ),
                              // Image(
                              //   image: AssetImage('assets/images/react.png'),
                              //   width: 100,
                              //   height: 100,
                              // ),
                              Text('React'),
                            ],
                          ),
                        ],
                      )
                    ]),
              ),

//Here comes the projects.
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  //Project items
                  Container(
                    height: 250,
                    width: 600,
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  )
                ],
              ),
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
