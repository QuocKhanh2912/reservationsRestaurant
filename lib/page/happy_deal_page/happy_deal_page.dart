import 'package:flutter/material.dart';

import '../../data/happy_deals.dart';
import '../home_page/components/happy_deals_listview/happy_deals_listview.dart';
import '../utils/color_management.dart';
import 'components/listview/component/item_1_listview.dart';
import 'components/listview/component/item_2_listview.dart';
import 'components/listview/happy_deals_page_listview.dart';

class HappyDealsPage extends StatefulWidget {
  const HappyDealsPage({super.key, this.dataFromUser});

  final String? dataFromUser;

  @override
  State<HappyDealsPage> createState() => _HappyDealsPageState();
}

class _HappyDealsPageState extends State<HappyDealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManagement.backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,size: 28,
                        )),
                  ), //back button
                  //forward button
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 24, right: 24, top: 13, bottom: 13),
                    child: Text(
                      'Happy Deals',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              const HappyDealsPageListView()
            ],
          ),
        ));
  }
}
