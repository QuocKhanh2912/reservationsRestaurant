import 'package:flutter/material.dart';

import '../../../utils/color_management.dart';
class StarRateWidget extends StatefulWidget {
  const StarRateWidget({super.key});

  @override
  State<StarRateWidget> createState() => _StarRateWidgetState();
}

class _StarRateWidgetState extends State<StarRateWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.star_rounded,color: ColorManagement.redAD3F32FF,size: 20,),
        Icon(Icons.star_rounded,color: ColorManagement.redAD3F32FF,size: 20,),
        Icon(Icons.star_rounded,color: ColorManagement.redAD3F32FF,size: 20,),
        Icon(Icons.star_rounded,color: ColorManagement.redAD3F32FF,size: 20,),
        Icon(Icons.star_rounded,color: ColorManagement.redAD3F32FF,size: 20,),
      ],
    );
  }
}
