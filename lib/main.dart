import 'package:flutter/material.dart';
import 'package:jwellery_api/provider/user_provider.dart';
import 'package:jwellery_api/views/jwellery_api.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.red,
      ),
      home: ChangeNotifierProvider(
        create: (_) =>
          UserProvider(),
        
        child: const JwelleryApi()),
    );
  }
}
