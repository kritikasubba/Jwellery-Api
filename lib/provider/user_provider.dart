import 'package:flutter/cupertino.dart';
import 'package:jwellery_api/model/details.dart';

class UserProvider extends ChangeNotifier {
  Details? _details; 

  Details? get jwelleryDetail {  //getter method is created to get input from details model
    return _details;
  }

  set detailsPost(Details post) { //setter method is create to set the input in details model
    _details = post;
  }
}