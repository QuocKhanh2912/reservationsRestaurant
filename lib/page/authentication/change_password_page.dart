import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/data_user.dart';
import '../../routes/route_named.dart';
import '../utils/assest_management.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ChangePasswordPageState();
  }
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  late User user;

  final _keyForm = GlobalKey<FormState>();
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    loadUser();
    super.initState();
  }

  loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String strUser = prefs.getString("user") ?? '';
    user = User.fromJson(jsonDecode(strUser));
    currentPasswordController.text = user.name ?? "";
    newPasswordController.text = user.phone ?? "";
    confirmPasswordController.text = user.email ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 85),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),
                ),
                InkWell(
                  onTap: () async {
                    if (_keyForm.currentState!.validate()) {
                      Navigator.pushNamed(context, RouteNamed.successChangePassword);
                      SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                      user.name = currentPasswordController.text;
                      user.phone = newPasswordController.text;
                      user.email = confirmPasswordController.text;
                      String strUser = jsonEncode(user.toJson());
                      prefs.setString("user", strUser);

                    }
                  },
                  child: const Text(
                    "Done",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            color: const Color.fromARGB(255, 246, 239, 231),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      color: Colors.white,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Stack(
                        children: [
                          Image.asset(
                            AssetsManagement.profileAvatar,
                            fit: BoxFit.contain,
                            height: 160,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                      key: _keyForm,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: currentPasswordController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                suffixIcon:
                                Image.asset(AssetsManagement.iconEdit),
                                hintText: "Current Password",
                                hintStyle: const TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                )),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password can\'t be empty';
                              }
                              RegExp passwordExp = RegExp(
                                  '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@\$%^&*-]).{8,18}\$');
                              if (!passwordExp.hasMatch(value)) {
                                return 'Your password phone is invalid';
                              }
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: newPasswordController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                suffixIcon:
                                Image.asset(AssetsManagement.iconEdit),
                                hintText: "New Password",
                                hintStyle: const TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                )),
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password can\'t be empty';
                              }
                              RegExp passwordExp = RegExp(
                                  '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@\$%^&*-]).{8,18}\$');
                              if (!passwordExp.hasMatch(value)) {
                                return 'Your password phone is invalid';
                              }
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: confirmPasswordController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                suffixIcon:
                                Image.asset(AssetsManagement.iconEdit),
                                hintText: "Confirm New Password",
                                hintStyle: const TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                )),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (confirmPasswordController.text!=newPasswordController.text){
                                return 'Confirm Password must same New Password';
                              }
                            },
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
