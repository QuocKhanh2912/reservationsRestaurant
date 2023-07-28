import 'package:flutter/material.dart';

import '../../../../../data/happy_deals.dart';
import '../../../../utils/font_management.dart';

class Item2ListView extends StatefulWidget {
  const Item2ListView({super.key, required this.item});

  final HappyDealsData item;

  @override
  State<Item2ListView> createState() => _Item2ListViewState();
}

class _Item2ListViewState extends State<Item2ListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 125,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF51B698), Color(0xFF6AF0E0)]),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(widget.item.dishImage),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   Padding(
                    padding: const EdgeInsets.only(),
                    child: Text(
                      'TRY NEW DISHES',
                      style: FontManagement.titleHappyDeals,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red.shade50.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(Icons.keyboard_arrow_right_sharp,
                            color: Colors.white),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(),
                      child: Text('Explore unique taste\nFor new eateres',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
