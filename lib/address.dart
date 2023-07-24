// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, camel_case_types

import 'package:flutter/material.dart';
import 'package:app/edit_address.dart';

class addressPage extends StatefulWidget {
  const addressPage({super.key});

  @override
  State<addressPage> createState() => _addressPageState();
}

class _addressPageState extends State<addressPage> {
  void _navigateToeditAddressPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => edit_address()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Delivery Addresses",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 110, 182),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: Colors.white,
          ),
          onPressed: () {
            // function
          },
        ),
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(14),
              child: Stack(
                children: [
                  ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8, bottom: 4),
                        child: Text(
                          "Saved Addresses",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 8),
                              child: Row(
                                children: [
                                  Text(
                                    "Sonu Sah",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Container(
                                      width: 80.0,
                                      height: 30.0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Center(
                                            child: Text(
                                          'Home',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 23, 110, 182),
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  '10 , 1, , 2,  MLR COLONY,Rampally Secunderabad , Rampally , Hyderabad , Telangana,501301 ,Phone : 8309900000',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 4,
                                  style: TextStyle(fontSize: 12),
                                )),
                          ])),

                      // Align(
                      //    alignment: Alignment.bottomCenter,
                      //   child: Container(
                      //     height: 100,
                      //     width: MediaQuery.of(context).size.width,
                      //     decoration:
                      //         BoxDecoration(border: Border.all(color: Colors.black38)),
                      //   ),
                      // )
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton.icon(
                            onPressed: () =>
                                // we can use routes also
                                _navigateToeditAddressPage(context),
                            icon: Icon(
                              Icons.add,
                              color: const Color.fromARGB(255, 23, 110, 182),
                              size: 30.0,
                            ),
                            label: Text(
                              "Add New Address",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 23, 110, 182),
                              ),
                            ),
                          )))
                ],
              ))),
    );
  }
}
