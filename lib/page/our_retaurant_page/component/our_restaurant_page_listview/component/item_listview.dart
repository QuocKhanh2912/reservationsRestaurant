import 'package:flutter/material.dart';
import 'package:reservation_restaurant/page/best_seller_page/component/best_seller_page_listview/star_rate_widget.dart';
import '../../../../../data/best_seller_page.dart';
import '../../../../../data/our_restaurant_data.dart';
import '../../../../utils/color_management.dart';
import '../../../../utils/font_management.dart';

class ItemOurRestaurantPageListView extends StatefulWidget {
  const ItemOurRestaurantPageListView({
    super.key,
    required this.item,
  });

  final OurRestaurantData item;

  @override
  State<ItemOurRestaurantPageListView> createState() =>
      _ItemOurRestaurantPageListViewState();
}

class _ItemOurRestaurantPageListViewState
    extends State<ItemOurRestaurantPageListView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(widget.item.restaurantImage, fit: BoxFit.fill)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(margin: EdgeInsets.only(top: 100,bottom: 10),
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
                        child: SizedBox(
                            width: 220,
                            child: Text(
                              widget.item.addressRestaurant,
                              style: FontManagement.addressRestaurantName,
                              softWrap: true,
                              maxLines: 2,
                            )),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 75,
                        height: 30,
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
                ]),
          ),
        )
      ],
    );
  }
}
