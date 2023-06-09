import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_start/view/editprofile.dart';
import '../controller/authprovider.dart';

class NavBar extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String address;
  final String age;

  NavBar(
      {super.key,
      required this.name,
      required this.email,
      required this.phone,
      required this.address,
      required this.age});
  
  @override
  Widget build(BuildContext context) {
  
    final authProvider = Provider.of<AuthProvider>(context);
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("${name}"),
          accountEmail: Text('${email}'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                '${authProvider.auth.currentUser!.photoURL}',
                fit: BoxFit.cover,
                width: 100,
                height: 90,
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
          ),
          otherAccountsPictures: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()));
                },
                icon: Icon(Icons.edit))
          ],
        ),
        ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Cart'),
            onTap: () => null),
        // ListTile(
        //   leading: Icon(Icons.person),
        //   title: Text('Profile'),
        //   onTap: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (context) => MyWidget(
        //                   name: name,
        //                   email: email,
        //                   phone: phone,
        //                   address: address,
        //                   age: age,
        //                 )));
        //   },
        // ),
        ListTile(
          leading: Icon(Icons.share),
          title: Text('Share'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.logout_rounded),
          title: Text('Logout'),
          onTap: () => FirebaseAuth.instance.signOut(),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: ()  {
            
          },
        ),
        ListTile(
          leading: Icon(Icons.description),
          title: Text('Policies'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          title: Text('Exit'),
          leading: Icon(Icons.exit_to_app),
          onTap: () => null,
        ),
      ],
    ));
  }
}