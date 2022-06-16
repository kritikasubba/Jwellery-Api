import 'package:flutter/material.dart';


class JwelleryDetailsPage extends StatefulWidget {
   int?  id;
  String? title;
  
  String? description;
  
   JwelleryDetailsPage({Key? key,
   
  
   required  this.description,
   required  this.id,
   
    required this.title
   }) : super(key: key);

  @override
  State<JwelleryDetailsPage> createState() => _JwelleryDetailsPageState();
}

class _JwelleryDetailsPageState extends State<JwelleryDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jwellery Details'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(32))
        ),
        child: Card(
          shadowColor: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Id: ${widget.id.toString()}', style: const TextStyle(height: 2),),  
                Text('Description: ${widget.description.toString()}',  ),
                SizedBox(height: 2,),
                Text('Title: ${widget.title.toString()}',  ),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}