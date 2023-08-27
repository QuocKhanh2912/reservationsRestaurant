import 'package:flutter/material.dart';

import '../../../../data/data_loggedin_loggedout.dart';
import '../../../../routes/route_named.dart';
import '../../../utils/assest_management.dart';
import '../../../utils/color_management.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(width: MediaQuery.sizeOf(context).width/1.05,
        backgroundColor: ColorManagement.backgroundColor,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width / 1.6,
                          child: Image.asset(
                            AssetsManagement.logo,
                            fit: BoxFit.fill,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Image.asset(
                                userMaryNguyen.image,
                                fit: BoxFit.fill,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    userMaryNguyen.name,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, RouteNamed.profilePage);
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF9D170F),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            'Edit profile',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFFFEBEB),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RouteNamed.homePage);
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.home_outlined,
                                        size: 35, color: Color(0xFF9D170F)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Home',
                                      style: TextStyle(
                                          color: Color(0xFF9D170F),
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              height: 0,
                              color: Color(0xFFFFE0DC),
                              thickness: 1,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RouteNamed.reservationPage);
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.menu_outlined,
                                        size: 35, color: Color(0xFF9D170F)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Reservation',
                                      style: TextStyle(
                                          color: Color(0xFF9D170F),
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              height: 0,
                              color: Color(0xFFFFE0DC),
                              thickness: 1,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RouteNamed.changePasswordPage);
                                },
                                child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(Icons.lock_outline,
                                            size: 35, color: Color(0xFF9D170F)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Change password',
                                          style: TextStyle(
                                              color: Color(0xFF9D170F),
                                              fontSize: 18),
                                        ),
                                      ),
                                    ])),
                            const Divider(
                              height: 0,
                              color: Color(0xFFFFE0DC),
                              thickness: 1,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RouteNamed.aboutUsPage);
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.info_outline,
                                        size: 35, color: Color(0xFF9D170F)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'About us',
                                      style: TextStyle(
                                          color: Color(0xFF9D170F),
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              height: 0,
                              color: Color(0xFFFFE0DC),
                              thickness: 1,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RouteNamed.loggedOutPage);
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.logout,
                                        size: 35, color: Color(0xFF9D170F)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Log out',
                                      style: TextStyle(
                                          color: Color(0xFF9D170F),
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(company.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15)),
                        Text(company.address,
                            style: const TextStyle(fontSize: 15)),
                        Text(company.gpk, style: const TextStyle(fontSize: 15)),
                        Text(company.phoneNumber,
                            style: const TextStyle(fontSize: 15)),
                        Text(company.email,
                            style: const TextStyle(fontSize: 15)),
                      ],
                    ),
                  ]),
            ),
          ),
        ));
    // Padding(
    //   padding: const EdgeInsets.all(20),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Image.asset(AssetsManagement.logo),
    //       ),
    //       Container(
    //         decoration: BoxDecoration(
    //             color: ColorManagement.redAD3F32FF,
    //             borderRadius: BorderRadius.circular(5)),
    //         child: InkWell(
    //           onTap: () {
    //             Navigator.pushNamed(context, RouteNamed.profilePage);
    //           },
    //           child: const Padding(
    //             padding: EdgeInsets.all(8.0),
    //             child: Text('Profile',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.w600,
    //                     fontSize: 20,
    //                     color: Colors.white)),
    //           ),
    //         ),
    //       ),
    //       const SizedBox(
    //         height: 10,
    //       ),
    //       Container(
    //         decoration: BoxDecoration(
    //             color: ColorManagement.redAD3F32FF,
    //             borderRadius: BorderRadius.circular(5)),
    //         child: InkWell(
    //           onTap: () {
    //             Navigator.pushNamed(context, RouteNamed.aboutUsPage);
    //           },
    //           child: const Padding(
    //             padding: EdgeInsets.all(8.0),
    //             child: Text('About Us',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.w600,
    //                     fontSize: 20,
    //                     color: Colors.white)),
    //           ),
    //         ),
    //       ),
    //       const SizedBox(
    //         height: 10,
    //       ),
    //       Container(
    //         decoration: BoxDecoration(
    //             color: ColorManagement.redAD3F32FF,
    //             borderRadius: BorderRadius.circular(5)),
    //         child: InkWell(
    //           onTap: () {
    //             Navigator.pushNamed(
    //                 context, RouteNamed.changePasswordPage);
    //           },
    //           child: const Padding(
    //             padding: EdgeInsets.all(8.0),
    //             child: Text('Change PassWord',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.w600,
    //                     fontSize: 20,
    //                     color: Colors.white)),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ));
  }
}
