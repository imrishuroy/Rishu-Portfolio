import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';

const List _projects = [
  {
    'name': 'Assignments + ',
    'imageUrl': 'assets/assignments.png',
    'bgColor': Color(0xffA2DBFA)
  },
  {
    'name': 'Yukti',
    'imageUrl': 'assets/yukti.png',
    'bgColor': Colors.green,
  },
  {
    'name': 'DSC OIST',
    'imageUrl': 'assets/dsc-oist.png',
    'bgColor': Colors.white,
  },
  {
    'name': 'Resizer',
    'imageUrl': 'assets/resizer.png',
    'bgColor': Color(0xffc2f542),
  },
  {
    'name': 'Clones',
    'imageUrl': 'assets/clones.png',
    'bgColor': Colors.blue,
  },
  {
    'name': 'e-learning',
    'imageUrl': 'assets/e-learning.png',
    'bgColor': Color(0xffA2DBFA),
  },
];

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    print('_width: $_width');
    return Container(
      height: 800.0,
      width: 800.0,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _width < 768 ? 2 : 3,
          mainAxisSpacing: _width > 500 ? 30.0 : 20.0,
          crossAxisSpacing: _width > 500 ? 30.0 : 20.0,
          // childAspectRatio: 1.3,
          childAspectRatio: _width > 400 ? 1.2 : 1.3,
        ),
        itemCount: _projects.length,
        itemBuilder: (context, index) {
          return Container(
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Column(
                        children: [
                          Hero(
                            tag: '${_projects[index]['imageUrl']}',
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor: _projects[index]['bgColor'],
                              backgroundImage:
                                  AssetImage('${_projects[index]['imageUrl']}'),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Created with love @sixteenbrains',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              //  Text('Check the < > @  '),
                              Icon(
                                FontAwesomeIcons.github,
                                color: Colors.black,
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: Card(
                color: Colors.white10,
                //color: Color(0xff20202d),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: '${_projects[index]['imageUrl']}',
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: _projects[index]['bgColor'],
                          backgroundImage:
                              AssetImage('${_projects[index]['imageUrl']}'),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        '${_projects[index]['name']}',
                        style: GoogleFonts.roboto(
                          fontSize: 18.5,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 20.0,
                              width: 20.0,
                              child: SvgPicture.asset(
                                'assets/app-store.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 20.0,
                              width: 20.0,
                              child: SvgPicture.asset(
                                'assets/google-play.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 20.0,
                              width: 20.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60.0),
                                child: SvgPicture.asset(
                                  'assets/web.svg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
