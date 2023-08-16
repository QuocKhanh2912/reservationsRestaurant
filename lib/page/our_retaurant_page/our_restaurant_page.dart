import 'package:flutter/material.dart';

import 'component/our_restaurant_page_listview/our_restaurant_page_listview.dart';

class OurRestaurantPage extends StatefulWidget {
  const OurRestaurantPage({super.key});

  @override
  State<OurRestaurantPage> createState() => _OurRestaurantPageState();
}

class _OurRestaurantPageState extends State<OurRestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 32,
            ),
          ),
          backgroundColor: Colors.orange[50],
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //widget 1
              Padding(
                  padding: EdgeInsets.only(bottom: 16, left: 24, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //widget 1.1
                      const Text(
                        'Our Restaurant',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),

                      //widget 1.2
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: const Row(
                          children: [
                            //widget 1.2.1
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'ALL',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            //widget 1.2.2
                            Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: Icon(Icons.keyboard_arrow_down_rounded),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),

              //widget 2
              const OurRestaurantPageListView()
            ],
          ),
        ));
  }
}
