import 'package:flutter/material.dart';

import '../../utils/color_management.dart';
import '../../utils/font_management.dart';


class BestSellerSection extends StatelessWidget {
  const BestSellerSection({Key? key,required this.nameTitle,required this.toPage}) : super(key: key);
  final String nameTitle;
  final String toPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24,right: 24,top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best seller',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorManagement.brow_1),
              ),
              InkWell(onTap: () {
                Navigator.pushNamed(context, toPage);
              },
                child: Row(children: [ Text(
                  'See All',
                  style: FontManagement.normalStyle,
                ),
                 Icon(Icons.arrow_forward_ios_rounded,color: ColorManagement.grey_99,size: 13,)],

                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
