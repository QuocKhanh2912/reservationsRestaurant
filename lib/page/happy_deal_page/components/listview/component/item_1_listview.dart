import 'package:flutter/material.dart';
import 'package:reservation_restaurant/page/utils/font_management.dart';

import '../../../../../data/happy_deals.dart';

class Item1ListView extends StatefulWidget {
  const Item1ListView({super.key,required this.item});
final HappyDealsData item;
  @override
  State<Item1ListView> createState() => _Item1ListViewState();
}

class _Item1ListViewState extends State<Item1ListView> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 330,
      height: 125,
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
              child: Image.asset(widget.item.dishImage)),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    'LAAARGE DISCOUNTS',
                     softWrap: true,
                     maxLines: 2,
                     style: FontManagement.titleHappyDeals,
                   ),

                     RichText(
                       text: const TextSpan(children: [
                         TextSpan(
                             text: 'Upto',
                             style: TextStyle(
                                 fontSize: 14, color: Colors.white)),
                         TextSpan(
                             text: '\t20%',
                             style: TextStyle(
                                 fontSize: 14,
                                 color: Colors.yellowAccent,
                                 fontWeight: FontWeight.bold)),
                         TextSpan(
                             text: '\tOFF',
                             style:
                             TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w700)),
                         TextSpan(
                             text: '\nNo upper limit!!!',
                             style:
                             TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w700)),
                       ]),
                     ),


                  Padding(
                    padding: const EdgeInsets.only( bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(Icons.keyboard_arrow_right,
                          size: 20, color: Colors.white),
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
