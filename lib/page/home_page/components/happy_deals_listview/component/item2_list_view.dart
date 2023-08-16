import 'package:flutter/material.dart';

import '../../../../../data/happy_deals.dart';
import '../../../../utils/font_management.dart';

class Item2BestSellerListView extends StatefulWidget {
  const Item2BestSellerListView({
    super.key,
    required this.item,
  });

  final HappyDealsData item;

  @override
  State<Item2BestSellerListView> createState() =>
      _Item2BestSellerListViewState();
}

class _Item2BestSellerListViewState extends State<Item2BestSellerListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 117,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF51B698), Color(0xFF6AF0E0)]),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Image.asset(widget.item.dishImage, scale: 1.3),
              )),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Text(
                      'TRY NEW DISHES',
                      softWrap: true,
                      maxLines: 2,
                      style: FontManagement.titleHappyDeals,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Explore unique taste For new eateries',
                      style: FontManagement.contentHappyDeals2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(Icons.keyboard_arrow_right,
                          size: 25, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
