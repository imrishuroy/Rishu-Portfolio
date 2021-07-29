import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 27.0,
              child: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 25.0,
                backgroundImage: AssetImage(
                  'assets/avtar.png',
                ),
              ),
            ),
          ),
          SizedBox(width: 14.0),
          Text(
            'Rishu Kumar',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
              primary: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: () {},
            icon: Icon(Icons.send),
            label: Text(
              'Contact Me',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.2,
                  fontSize: 17.0),
            ),
          ),
          SizedBox(width: 15.0)
        ],
      ),
    );
  }
}
