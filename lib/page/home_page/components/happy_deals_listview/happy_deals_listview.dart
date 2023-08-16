import 'package:flutter/material.dart';
import '../../../../data/happy_deals.dart';
import 'component/item1_list_view.dart';
import 'component/item2_list_view.dart';

class HappyDealsListView extends StatefulWidget {
  const HappyDealsListView({super.key});

  @override
  State<HappyDealsListView> createState() => _HappyDealsListViewState();
}

class _HappyDealsListViewState extends State<HappyDealsListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
        padding: const EdgeInsets.only(left: 24, right: 24,bottom: 24),
        shrinkWrap: true,
        itemCount: listHappyDealMockData.length,
        itemBuilder: (context, index) => index % 2 == 0
            ? Item1BestSellerListView(
                item: listHappyDealMockData[index],
              )
            : Item2BestSellerListView(item: listHappyDealMockData[index]),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
