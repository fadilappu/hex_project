// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart';

// class MyWidget extends StatelessWidget {
//   final name;
//   final age;
//   final address;
//   final email;
//   final phone;

//   MyWidget(
//       {super.key, this.name, this.age, this.address, this.email, this.phone});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             CircleAvatar(
//               radius: 50.0,
//               backgroundImage: NetworkImage('data:image/png;base64,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'),
//             ),
//             Text(
//               name,
//               style: GoogleFonts.abel(
//                 fontSize: 30.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             Text(
//               address.toUpperCase(),
//               style: TextStyle(
//                 fontSize: 20.0,
//                 color: Colors.teal.shade100,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2.5,
//               ),
//             ),
//             SizedBox(
//               height: 20.0,
//               width: 150,
//               child: Divider(
//                 color: Colors.teal.shade100,
//               ),
//             ),
//             InkWell(
//                 child: Card(
//                   margin:
//                       EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.phone,
//                       color: Colors.teal,
//                     ),
//                     title: Text(
//                       phone,
//                       style: TextStyle(
//                           fontFamily: 'SourceSansPro',
//                           fontSize: 20,
//                           color: Colors.teal.shade900),
//                     ),
//                   ),
//                 ),
//                 onTap: () {}),
//             InkWell(
//               child: Card(
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                 child: ListTile(
//                   leading: Icon(
//                     Icons.email,
//                     color: Colors.teal,
//                   ),
//                   title: Text(
//                     email,
//                     style: TextStyle(
//                         fontFamily: 'SourceSansPro',
//                         fontSize: 20,
//                         color: Colors.teal.shade900),
//                   ),
//                 ),
//               ),
//               onTap: () {},
//             ),
//             Card(
//               margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//               child: ListTile(
//                 leading: Text(
//                   'age',
//                   style: GoogleFonts.alegreyaSans(
//                       color: Colors.teal.shade900,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 title: Text(
//                   age,
//                   style: TextStyle(
//                       fontFamily: 'SourceSansPro',
//                       fontSize: 20,
//                       color: Colors.teal.shade900),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// _launchURL(var url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }