import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:reservation_restaurant/page/utils/color_management.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/data_reservation.dart';
import '../utils/assest_management.dart';

class ReviewPage extends StatefulWidget {
  late Reservation reservation;

  @override
  State<StatefulWidget> createState() {
    return _ReviewPageState();
  }

  ReviewPage({super.key, required this.reservation});
}

class _ReviewPageState extends State<ReviewPage> {
  final _keyForm = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.text = widget.reservation.comment ?? '';
    RowStar rowStar = RowStar(rate: widget.reservation.rate ?? 0);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close,
                          size: 24,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Text(
                        "Review Restaurant",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    widget.reservation.id ?? "#00000",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  AssetsManagement.restaurant,
                  fit: BoxFit.contain,
                  //height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    widget.reservation.name ?? "name",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: rowStar,
                ),
                const Text(
                  "Your comment",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Form(
                  key: _keyForm,
                  child: TextFormField(
                    maxLines: 5,
                    controller: controller,
                    focusNode: focusNode,
                    onTapOutside: (event) {
                      focusNode.unfocus();
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(AssetsManagement.camera),
                            const Text(
                              "Photo",
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextButton(
                    onPressed: () async {
                      Reservation res = Reservation(widget.reservation.id,
                          widget.reservation.name, rowStar.rate, controller.text);
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      List<String> list = await prefs.getStringList("list") ?? [];
                      bool check = false;
                      for (int i = 0; i < list.length; i++) {
                        Reservation resItem =
                            Reservation.fromJson(jsonDecode(list[i]));
                        if (resItem.id == widget.reservation.id) {
                          list[i] = jsonEncode(res.toJson());
                          check = true;
                          break;
                        }
                      }
                      if (!check) {
                        list.add(jsonEncode(res.toJson()));
                      }
                      prefs.setStringList("list", list);
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                          color: ColorManagement.redAD3F32FF,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Align(alignment:Alignment.center ,
                        child: Text(
                          "SEND",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RowStar extends StatefulWidget {
  int rate;

  RowStar({super.key, required this.rate});

  @override
  State<StatefulWidget> createState() {
    return _RowStarState();
  }
}

class _RowStarState extends State<RowStar> {
  @override
  Widget build(BuildContext context) {
    List<Widget> listStar = [];
    for (int i = 1; i <= 5; i++) {
      listStar.add(InkWell(
        child: Icon(
          i <= widget.rate ? Icons.star_rounded : Icons.star_outline_rounded,
          color: Color.fromARGB(255, 170, 54, 41),
          size: MediaQuery.of(context).size.width / 7,
        ),
        onTap: () {
          widget.rate = i;
          setState(() {});
        },
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: listStar,
    );
  }
}
