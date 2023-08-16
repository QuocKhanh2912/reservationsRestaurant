import 'package:flutter/material.dart';

import '../../../../data/happy_deals.dart';
import 'component/item_1_listview.dart';
import 'component/item_2_listview.dart';


class HappyDealsPageListView extends StatefulWidget {
  const HappyDealsPageListView({super.key});

  @override
  State<HappyDealsPageListView> createState() => _HappyDealsPageListViewState();
}

class _HappyDealsPageListViewState extends State<HappyDealsPageListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView.separated(
          scrollDirection:Axis.vertical,
          separatorBuilder: (context, index) =>
          const Divider(thickness: 10, color: Colors.transparent),
          itemCount: listHappyDealMockData.length,
          itemBuilder: (context, index) => index % 2 == 0
              ? Item1ListView(item: listHappyDealMockData[index])
              : Item2ListView(item: listHappyDealMockData[index]),
        ),
      ),
    );
  }
}
