import 'package:flutter/material.dart';
import '../../../../../data/our_restaurant_data.dart';
import '../../../../utils/color_management.dart';
import '../../../../utils/font_management.dart';

class ItemOurRestaurantListView extends StatefulWidget {
  const ItemOurRestaurantListView({super.key, required this.item});

  final OurRestaurantData item;

  @override
  State<ItemOurRestaurantListView> createState() =>
      _ItemOurRestaurantListViewState();
}

class _ItemOurRestaurantListViewState extends State<ItemOurRestaurantListView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(widget.item.restaurantImage, fit: BoxFit.fill)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(margin: const EdgeInsets.only(top: 100,bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorManagement.white,
            ),
            width: MediaQuery.of(context).size.width / 1.25,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,top: 3),
                        child: Text(widget.item.restaurantName,
                            style: FontManagement.ourRestaurantName),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,bottom: 10),
                        child: Container(
                            width: MediaQuery.of(context).size.width / 1.6,
                            child: Text(
                              widget.item.addressRestaurant,
                              style: FontManagement.addressRestaurantName,
                              softWrap: true,
                              maxLines: 2,
                            )),
                      )
                    ],
                  ),
                  Image.asset(
                      'assets/images/home_page/our_restaurant/torch_logo.png')
                ]),
          ),
        )
      ],
    );
  }
}
