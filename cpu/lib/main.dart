import 'package:cpu/Home.dart';
import 'package:cpu/mongo/mongoDB.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(MaterialApp(title: 'CPU Simulator',home: MyApp(),) );
}

class MyApp extends StatelessWidget {
    MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
   @override
  Widget build(BuildContext context) {
    return
       MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.purple,
      ),
      home:  Home(),
    );
  }}
    
    


