import 'package:flutter/material.dart';
import 'package:reservation_restaurant/page/best_seller_page/component/best_seller_page_listview/star_rate_widget.dart';
import '../../../../../data/best_seller_data.dart';
import '../../../../data/best_seller_page.dart';
import '../../../utils/color_management.dart';
import '../../../utils/font_management.dart';

class ItemBestSellerPageListView extends StatefulWidget {
  const ItemBestSellerPageListView({
    super.key,
    required this.item,
  });

  final BestSellerPageData item;

  @override
  State<ItemBestSellerPageListView> createState() =>
      _ItemBestSellerPageListViewState();
}

class _ItemBestSellerPageListViewState
    extends State<ItemBestSellerPageListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorManagement.white,
      ),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13,left: 13,bottom: 13),
            child: Image.asset(widget.item.dishImage),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.dishName,
                      style: FontManagement.titleBestSellerPage,textAlign: TextAlign.start,
                    ),
                     Row(
                      children: [
                        SizedBox(width: 190,
                          child: Text(widget.item.dishDescription,
                              style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black),softWrap: true),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StarRateWidget(),
                        Text(
                          '(100)',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 91,
                          height: 26,
                          decoration: BoxDecoration(
                              color: ColorManagement.redAD3F32FF,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Align(alignment: Alignment.center,
                            child: Text(
                              'Reserve',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
