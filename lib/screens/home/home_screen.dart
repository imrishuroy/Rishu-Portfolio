import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [Header()],
        ),
      ),
    );
  }
}
// appBar: PreferredSize(
//   child: AppBar(
//     elevation: 0.0,
//     backgroundColor: Colors.white,
//     title: Padding(
//       padding: const EdgeInsets.only(top: 10.0),
//       child: Row(
//         children: [
//           CircleAvatar(
//             backgroundColor: Colors.orange,
//             radius: 27.0,
//             child: CircleAvatar(
//               backgroundColor: Colors.blueGrey,
//               radius: 25.0,
//               backgroundImage: AssetImage(
//                 'assets/avtar.png',
//               ),
//             ),
//           ),
//           SizedBox(width: 14.0),
//           Text(
//             'Rishu Kumar',
//             style: TextStyle(
//               color: Colors.black,
//               fontStyle: FontStyle.italic,
//             ),
//           ),
//         ],
//       ),
//     ),
//     actions: [
//       ButtonTheme(
//         height: 20.0,
//         child: ElevatedButton.icon(
//           style: ElevatedButton.styleFrom(
//             // padding: EdgeInsets.zero,
//             primary: Colors.amber,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(16.0),
//             ),
//           ),
//           onPressed: () {},
//           icon: Icon(Icons.send),
//           label: Text('Contact Me'),
//         ),
//       ),
//       SizedBox(width: 20.0),
//     ],
//   ),
//   preferredSize: Size.fromHeight(300.0),
// ),
