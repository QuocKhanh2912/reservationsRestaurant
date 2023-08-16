import 'package:flutter/material.dart';

import '../../../../routes/route_named.dart';
import '../../../utils/assest_management.dart';
import '../../../utils/color_management.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: ColorManagement.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManagement.logo),
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorManagement.redAD3F32FF,
                    borderRadius: BorderRadius.circular(5)),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNamed.profilePage);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorManagement.redAD3F32FF,
                    borderRadius: BorderRadius.circular(5)),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNamed.aboutUsPage);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('About Us',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorManagement.redAD3F32FF,
                    borderRadius: BorderRadius.circular(5)),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteNamed.changePasswordPage);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Change PassWord',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
