// ignore_for_file: camel_case_types, prefer_const_constructors, sized_box_for_whitespace, unused_element

import 'package:flutter/material.dart';
import 'package:app/address.dart';

class edit_address extends StatefulWidget {
  const edit_address({super.key});

  @override
  State<edit_address> createState() => _edit_addressState();
}

class _edit_addressState extends State<edit_address> {
  void _navigateToAddressPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => addressPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // NOTE : not getting the icon on the proper position when the navigator is used thats why commented the actions

          // actions: [
          //   IconButton(
          //     icon: Icon(
          //       Icons.arrow_back_ios_new_rounded,
          //       size: 20,
          //       color: Colors.white,
          //     ),
          //     onPressed: () => _navigateToAddressPage(context),
          //   ),
          // ],
          title: Text(
            "Add Address",
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 23, 110, 182),
        ),
        body: SafeArea(
            child: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/images/abc.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(color: Colors.grey[100]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, right: 8),
                            child: Text(
                              "Address ",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "House No.",
                                      hintStyle: TextStyle(fontSize: 12)),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Floor No.",
                                      hintStyle: TextStyle(fontSize: 12)),
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Tower No.",
                                hintStyle: TextStyle(fontSize: 12)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Building/Apartment Name",
                                hintStyle: TextStyle(fontSize: 12)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Address* ",
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Landmark / Area *  ",
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(color: Colors.grey[100]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, right: 8),
                            child: Text(
                              "Delivery Contact Details",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'This mobile number will receive an OTP,required for collecting the order',
                            style: TextStyle(fontSize: 9),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Receivers Name*",
                                hintStyle: TextStyle(fontSize: 12)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Receivers Number*",
                                hintStyle: TextStyle(fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(color: Colors.grey[100]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, right: 8),
                            child: Text(
                              "Delivery Contact Details",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'This mobile number will receive an OTP,required for collecting the order',
                            style: TextStyle(fontSize: 9),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Receivers Name*",
                                hintStyle: TextStyle(fontSize: 12)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Receivers Number*",
                                hintStyle: TextStyle(fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 23, 110, 182),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add New Address",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ))
          ],
        )));
  }
}
