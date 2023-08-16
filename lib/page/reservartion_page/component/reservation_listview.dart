import 'package:flutter/material.dart';

import '../../../data/data_reservation.dart';
import 'item_listview.dart';

class ReservationListview extends StatefulWidget {
  const ReservationListview({super.key});

  @override
  State<ReservationListview> createState() => _ReservationListviewState();
}

class _ReservationListviewState extends State<ReservationListview> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) => ItemListview(index: index),
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: Data.restaurants.length),
    );
  }
}
