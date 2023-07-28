import 'package:flutter/material.dart';

import '../../../../data/best_seller_data.dart';
import '../../../utils/color_management.dart';
import 'component/item_list_view.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({super.key});


  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 250,
      child: ListView.separated(

          separatorBuilder: (context, index) => SizedBox(width: 10,),
          padding: const EdgeInsets.only(left: 24,right: 24),
          shrinkWrap: true,

          itemCount: listBestSeller.length,
          itemBuilder: (context, index) {
            return ItemBestSellerListView(
              item: listBestSeller[index],
            );
          },
          scrollDirection: Axis.horizontal,
      ),
    );
  }
}
