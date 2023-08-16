import 'package:flutter/material.dart';

import '../../../../../data/best_seller_data.dart';
import '../../../../utils/color_management.dart';
import '../../../../utils/font_management.dart';

class ItemBestSellerListView extends StatefulWidget {
  const ItemBestSellerListView(
      {super.key, required this.item, });

  final BestSellerData item;

  @override
  State<ItemBestSellerListView> createState() => _ItemBestSellerListViewState();
}

class _ItemBestSellerListViewState extends State<ItemBestSellerListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorManagement.white,
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
            width: 150,
            child: Image.asset(widget.item.dishImage, fit: BoxFit.fitWidth)),
        Text(
          widget.item.dishName,
          style: FontManagement.moreBoldStyle,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 15,
            ),
            Text(widget.item.addressRestaurant,
                style: FontManagement.smallNormalStyle),
          ],
        ),
        TextButton(
            onPressed: () {},
            child: Container(
              width: 129,
              height: 35,
              decoration: BoxDecoration(
                  color: ColorManagement.redAD3F32FF,
                  borderRadius: BorderRadius.circular(10)),
              child: Align(alignment:Alignment.center,
                child: Text(

                  'Reserve',
                  style: FontManagement.biggerNormalStyle,
                ),
              ),
            ))
      ]),
    );
  }
}
