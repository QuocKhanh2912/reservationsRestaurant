import 'package:flutter/material.dart';
import 'package:reservation_restaurant/page/utils/assest_management.dart';
import '../../routes/route_named.dart';
import '../utils/color_management.dart';
import 'components/banner_carousel.dart';
import 'components/best_seller_listview/best_seller_listview.dart';
import 'components/drawer_page/drawer_page.dart';
import 'components/happy_deals_listview/happy_deals_listview.dart';
import 'components/our_restaurant_listview/our_restaurant_listview.dart';
import 'components/title_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManagement.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorManagement.appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: ColorManagement.redAD3F32FF,
            ),
            Text(
              'Dong Khoi St, District 1',
              style: TextStyle(
                  color: ColorManagement.grey_99,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          Container(
            decoration: BoxDecoration(
                color: ColorManagement.white,
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.notificationPage);
              },
              icon: const Icon(Icons.notifications_outlined),
            ),
          )
        ],
      ),
      drawer: const DrawerPage(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 24, right: 24, bottom: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 8),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.search,
                                size: 25, color: ColorManagement.grey_99),
                            Text(
                              'Search',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: ColorManagement.grey_99),
                            )
                          ],
                        ),
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      fillColor: ColorManagement.white,
                      filled: true),
                ),
              ),
              const BannerCarousel(),
              BestSellerSection(
                  nameTitle: 'Best Seller',
                  onTapSeeAll: () {
                    Navigator.pushNamed(context, RouteNamed.bestSellerPage);
                  }),
              const BestSellerListView(),
              BestSellerSection(
                nameTitle: 'Our Restaurant',
                onTapSeeAll: () {
                  Navigator.pushNamed(context, RouteNamed.ourRestaurantPage);
                },
              ),
              OurRestaurantListView(),
              BestSellerSection(
                nameTitle: 'Happy Deals',
                onTapSeeAll: () {
                  Navigator.pushNamed(context, RouteNamed.happyDealsPage);
                },
              ),
              HappyDealsListView(),
            ],
          ),
        )),
      ),
    );
  }
}
