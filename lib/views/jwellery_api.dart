import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jwellery_api/provider/user_provider.dart';
import 'package:provider/provider.dart';

class JwelleryApi extends StatefulWidget {
  const JwelleryApi({Key? key}) : super(key: key);

  @override
  State<JwelleryApi> createState() => _JwelleryApiState();
}

class _JwelleryApiState extends State<JwelleryApi> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(builder: (context, value, child){
return ListView.builder(itemBuilder: (context, index) {
  return Column(
    children: [
    
    ],
  );
});

    } );
    
  }
}