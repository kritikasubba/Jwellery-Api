import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jwellery_api/provider/user_provider.dart';
import 'package:jwellery_api/views/views.dart';
import 'package:provider/provider.dart';

class JwelleryApi extends StatefulWidget {
  const JwelleryApi({Key? key}) : super(key: key);

  @override
  State<JwelleryApi> createState() => _JwelleryApiState();
}

class _JwelleryApiState extends State<JwelleryApi> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<UserProvider>(context , listen: false).getDetails();
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return  
    
    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Jwellery Shop'),
      ),
      body : Consumer<UserProvider>(builder: (context, value, child){
    return ListView.builder(
      itemCount: jwelleryDetails.length,
      itemBuilder: (context, index) {
      return Column(
      children: [
        Image.network(jwelleryDetails[index].image ?? ""),
      Text(jwelleryDetails[index].id.toString()),
      Text(jwelleryDetails[index].price.toString()),
      ],
      );
    });
    
      } ),
    );
    
  }
}