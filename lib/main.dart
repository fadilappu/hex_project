import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:web_start/controller/firebase_options.dart';
import 'package:web_start/view/appbar.dart';
import 'package:web_start/view/loginpage.dart';
import 'controller/apiprovider.dart';
import 'controller/authprovider.dart';
import 'controller/hivefunction.dart';
import 'controller/profileprovider.dart';
import 'model/hive_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(modelAdapter().typeId)) {
    Hive.registerAdapter(modelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider<IndexNotifier>(
          create: (_) => IndexNotifier(),
        ),
        ChangeNotifierProvider<Profileprovider>(
          create: (_) => Profileprovider(),
        ),
        ChangeNotifierProvider<Hiveprovider>(

          create: (_) => Hiveprovider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return HomePageAppBar();
            } else {
              return Loginpage();
            }
          }),
        ),
      ),
    );
  }
}