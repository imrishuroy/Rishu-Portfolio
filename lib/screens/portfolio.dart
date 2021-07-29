import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class PortFolio extends StatelessWidget {
  const PortFolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    print(_width);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top: 60.0, bottom: 60.0, left: 20.0),

        // const EdgeInsets.symmetric(
        //   horizontal: 60.0,
        //   vertical: 60.0,
        // ),
        child: Center(
          child: Container(
            //swidth: 700.0,
            child: SingleChildScrollView(
              child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  SizedBox(height: 40.0),
                  Container(
                    //   height: 400.0,
                    width: 600.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 20.0,
                    ),
                    color: Colors.black,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceE,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20.0),
                        CircleAvatar(
                          backgroundColor: Colors.deepOrangeAccent,
                          radius: 35.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            radius: 32.0,
                            backgroundImage: NetworkImage(
                                'https://raw.githubusercontent.com/imrishuroy/Images/main/avtar.png'),
                          ),
                        ),
                        const SizedBox(height: 35.0),
                        Text(
                          'I\'m Rishu Kumar, a developer',
                          style: GoogleFonts.roboto(
                            fontSize: 34.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20.0),

                        Linkify(
                          onOpen: (link) {
                            launch(link.url);
                          },
                          text: _width > 550
                              ? 'Currently working @https://sixteenbrains.com'
                              : 'Currently working\n@https://sixteenbrains.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(height: 25.0),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 0.8,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Currently learning everything, loves to read and write. You can follow me on ',
                              ),
                              TextSpan(
                                text: 'Twitter',
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    launch('https://twitter.com/imrishuroy');
                                  },
                              ),
                              TextSpan(text: ' or '),
                              TextSpan(
                                text: 'LinkedIn',
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    launch(
                                        'https://www.linkedin.com/in/imrishuroy/');
                                  },
                              ),
                              TextSpan(
                                  text:
                                      ' I post a lot about Flutter and tech related stuff.')
                            ],
                          ),
                        ),
                        SizedBox(height: 60.0),
                        // Text(
                        //   'Contact',
                        //   style: TextStyle(
                        //     color: Colors.blue,
                        //     fontWeight: FontWeight.w600,
                        //     fontSize: 18.0,
                        //     letterSpacing: 1.2,
                        //   ),
                        // ),
                        //SizedBox(height: 25.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClickableIcon(
                                url: 'https://github.com/imrishuroy',
                                icon: FontAwesomeIcons.github),
                            ClickableIcon(
                                url:
                                    'https://stackoverflow.com/users/13686245/rishu-roy',
                                icon: FontAwesomeIcons.stackOverflow),
                            ClickableIcon(
                              url: 'https://medium.com/@imrishuroy',
                              icon: FontAwesomeIcons.medium,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
