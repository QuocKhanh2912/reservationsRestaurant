import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../data/data_reservation.dart';
import '../../routes/route_named.dart';
import '../utils/color_management.dart';
import 'component/reservation_listview.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ReservationPageState();
  }
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorManagement.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      size: 28,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Your reservation",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              const ReservationListview()
            ],
          ),
        ),
      ),
    );
  }


}
