import 'package:flutter/material.dart';

import '../../../../data/best_seller_data.dart';
import '../../../data/best_seller_page.dart';
import 'best_seller_page_listview/listview_item.dart';


class BestSellerPageListView extends StatefulWidget {
  const BestSellerPageListView({super.key});


  @override
  State<BestSellerPageListView> createState() => _BestSellerPageListViewState();
}

class _BestSellerPageListViewState extends State<BestSellerPageListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.only(left: 24,right: 24),
        separatorBuilder: (context, index) => Divider(thickness: 10,color: Colors.transparent,),
        shrinkWrap: true,physics: AlwaysScrollableScrollPhysics(),
        itemCount: listBestSellerPageMockData.length,
        itemBuilder: (context, index) {
          return ItemBestSellerPageListView(
            item: listBestSellerPageMockData[index],
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
