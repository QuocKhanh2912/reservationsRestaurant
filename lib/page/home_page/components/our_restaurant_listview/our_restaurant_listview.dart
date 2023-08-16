import 'package:flutter/material.dart';
import '../../../../data/our_restaurant_data.dart';
import 'component/item_listview.dart';



class OurRestaurantListView extends StatefulWidget {
  const OurRestaurantListView({super.key});


  @override
  State<OurRestaurantListView> createState() => _OurRestaurantListViewState();
}

class _OurRestaurantListViewState extends State<OurRestaurantListView> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 350,
      child: ListView.separated(

        separatorBuilder: (context, index) => Divider(thickness: 20,color: Colors.transparent,),
        padding: const EdgeInsets.only(left: 24,right: 24),
        shrinkWrap: true,

        itemCount: listOurRestaurantMockData.length,
        itemBuilder: (context, index) {
          return ItemOurRestaurantListView(
            item: listOurRestaurantMockData[index],
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
