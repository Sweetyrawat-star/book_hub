
import 'package:book_hub/model/auth_services.dart';
import 'package:book_hub/state/current_user_state.dart';
import 'package:book_hub/utils/ourTheme.dart';

import 'package:book_hub/view/login/login.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        Provider<AuthServices>(create:(_)=>AuthServices())
      ],
      child: ChangeNotifierProvider(
        create: (context)=> CurrentState(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',

          theme: OurTheme().buildTheme(),
          home: const Login(),
        //   initialRoute: '/',
        //   routes: {
        //     '/':(context)=> const Wrapper(),
        // '/login':(context)=> const Login(),
        // '/register':(context)=> const RegisterScreen(),
      
      
        // },
        ),
      ),
    );
  }
}


