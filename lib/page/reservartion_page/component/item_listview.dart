import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:reservation_restaurant/page/utils/color_management.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/data_reservation.dart';
import '../../../routes/route_named.dart';

class ItemListview extends StatelessWidget {
  const ItemListview({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    Data.restaurants[index][1],
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Data.restaurants[index][2],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(Data.restaurants[index][3]),
                      ],
                    ),
                  ),
                  Text(
                    Data.restaurants[index][0],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Data.restaurants[index][4],
                      ),
                      Text(
                        Data.restaurants[index][5],
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    Reservation reservation = Reservation(
                        Data.restaurants[index][0],
                        Data.restaurants[index][4],
                        0,
                        '');
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    List<String> list = await prefs.getStringList("list") ?? [];
                    for (String str in list) {
                      Reservation resItem =
                          Reservation.fromJson(jsonDecode(str));
                      if (resItem.id == Data.restaurants[index][0]) {
                        reservation = resItem;
                        break;
                      }
                    }

                    Navigator.pushNamed(context, RouteNamed.reviewPage,
                        arguments: reservation);
                  },
                  child: Container(
                      color: ColorManagement.redAD3F32FF,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1,bottom: 1,right: 10,left: 10),
                        child: Text(Data.restaurants[index][6],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                      )),
                )
              ],
            ),
          ],
        ));
  }
}
