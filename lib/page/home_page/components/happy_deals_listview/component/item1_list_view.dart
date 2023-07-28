import 'package:flutter/material.dart';
import '../../../../../data/happy_deals.dart';
import '../../../../utils/font_management.dart';


class Item1BestSellerListView extends StatefulWidget {
  const Item1BestSellerListView(
      {super.key, required this.item, });

  final HappyDealsData item;

  @override
  State<Item1BestSellerListView> createState() => _Item1BestSellerListViewState();
}

class _Item1BestSellerListViewState extends State<Item1BestSellerListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 117,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [ Color(0xFFFB6A70),Color(0xFFFCA384)]),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Image.asset(widget.item.dishImage,scale: 1.3),
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
                    child: Expanded(
                        child: Text(
                          'LAAARGE DISCOUNTS',
                          softWrap: true,
                          maxLines: 2,
                          style: FontManagement.titleHappyDeals,
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Upto',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white,fontWeight:FontWeight.w400)),
                          TextSpan(
                              text: '\t20%',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.yellowAccent,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '\tOFF',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white,fontWeight:FontWeight.w700)),
                          TextSpan(
                              text: '\nNo upper limit!',
                              style:
                              TextStyle(fontSize: 14, color: Colors.white,fontWeight:FontWeight.w700)),
                        ]),
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
