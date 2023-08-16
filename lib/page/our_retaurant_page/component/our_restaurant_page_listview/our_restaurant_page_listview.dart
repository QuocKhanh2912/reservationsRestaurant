import 'package:flutter/material.dart';

import '../../../../data/best_seller_page.dart';
import '../../../../data/our_restaurant_data.dart';
import 'component/item_listview.dart';



class OurRestaurantPageListView extends StatefulWidget {
  const OurRestaurantPageListView({super.key});


  @override
  State<OurRestaurantPageListView> createState() => _OurRestaurantPageListViewState();
}

class _OurRestaurantPageListViewState extends State<OurRestaurantPageListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.only(left: 24,right: 24),
        separatorBuilder: (context, index) => Divider(thickness: 10,color: Colors.transparent,),
        shrinkWrap: true,physics: AlwaysScrollableScrollPhysics(),
        itemCount: listOurRestaurantMockData.length,
        itemBuilder: (context, index) {
          return ItemOurRestaurantPageListView(
            item: listOurRestaurantMockData[index],
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
