import 'package:flutter/material.dart';

import 'package:jwellery_api/provider/user_provider.dart';
import 'package:jwellery_api/views/jwellery_details_page.dart';
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
      Provider.of<UserProvider>(context, listen: false).getDetails();
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Jwellery Shop'),
      ),
      body: Consumer<UserProvider>(builder: (context, value, child) {
        return ListView.builder(
            itemCount: jwelleryDetails.length,
            itemBuilder: (context, index) {
              return navigatePage(index, context);
            });
      }),
    );
  }

  GestureDetector navigatePage(int index, BuildContext context) {
    return GestureDetector(
              onTap: () {
                int? newId;
                String? newTitle;
                String? newDescription;

                setState(() {
                  newId = jwelleryDetails[index].id;
                  newTitle = jwelleryDetails[index].title;
                  newDescription = jwelleryDetails[index].description;

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return JwelleryDetailsPage(
                        description: newDescription,
                        id: newId,
                        title: newTitle);
                  }));
                });
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: detailsCard(index),
              ),
            );
  }

  Card detailsCard(int index) {
    return Card(
                  shadowColor: Colors.red,
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 250,
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.red.shade100, width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(32)),
                        ),
                        child: detailsColumn(index),
                      ),
                    ],
                  ),
                );
  }

  ClipRRect detailsColumn(int index) {
    return ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  Image.network(
                                    jwelleryDetails[index].image ?? "",
                                    height: 100,
                                  ),
                                  textWidget(index),
                                ],
                              ),
                            ));
  }

  Column textWidget(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Price: ${jwelleryDetails[index].price.toString()}"),
        Text("Rating: ${jwelleryDetails[index].rating.toString()}"),
      ],
    );
  }
}
