import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/data_user.dart';
import '../utils/assest_management.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  late User user;

  final _keyForm = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
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
    nameController.text = user.name ?? "";
    phoneController.text = user.phone ?? "";
    emailController.text = user.email ?? "";
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
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      user.name = nameController.text;
                      user.phone = phoneController.text;
                      user.email = emailController.text;
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
                            controller: nameController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                suffixIcon:
                                    Image.asset(AssetsManagement.iconEdit),
                                hintText: "Name",
                                hintStyle: const TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                )),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Not null";
                              }
                              RegExp regex = RegExp(r"^[a-zA-Z\s]+$");
                              if (!regex.hasMatch(value)) {
                                return "Invalid";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: phoneController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                suffixIcon:
                                    Image.asset(AssetsManagement.iconEdit),
                                hintText: "Phone",
                                hintStyle: const TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                )),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Not null";
                              }
                              RegExp regex = RegExp(r"^\+?\d{10,}$");
                              if (!regex.hasMatch(value)) {
                                return "Invalid";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                suffixIcon:
                                    Image.asset(AssetsManagement.iconEdit),
                                hintText: "Email",
                                hintStyle: const TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                )),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Not null";
                              }
                              RegExp regex = RegExp(r"^\w+@\w+(\.\w+)+$");
                              if (!regex.hasMatch(value)) {
                                return "Invalid";
                              }
                              return null;
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
