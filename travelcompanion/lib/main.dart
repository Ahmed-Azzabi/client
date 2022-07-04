import 'package:flutter/material.dart';
import 'package:travelcompanion/firebase_options.dart';
import 'package:travelcompanion/map_side/main_map.dart';

import 'Chat_Side/main_chat.dart';

import 'ScreensLoginsignup/register/register.dart';
import 'circuits/circuit.dart';
import "screensfeed/Feed/feed/feed.dart";
import "userProfil/userProfil.dart";
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter travel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 7, 6, 6),
      ),
      home: const Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return RegisterScreen();
            },
          ));
        },
        child: const Text('connect to the app'),
      ),
    );
  }
}

class Clicky extends StatelessWidget {
  const Clicky({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const Chat();
            },
          ));
        },
        child: const Text('GO TO CHAT?'),
      ),
    );
  }
}

class Circuits extends StatelessWidget {
  const Circuits({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const CircuitList();
            },
          ));
        },
        child: const Text('GO TO CIRCUIT?'),
      ),
    );
  }
}

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return FeedPublication();
            },
          ));
        },
        child: const Text('show the feed'),
      ),
    );
  }
}

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return UserProfil();
            },
          ));
        },
        child: const Text('show the profil'),
      ),
    );
  }
}

class Mappin extends StatelessWidget {
  const Mappin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CircuitMap();
          },
        ));
      },
      child: const Text('GO TO MAP'),
    ));
  }
}
