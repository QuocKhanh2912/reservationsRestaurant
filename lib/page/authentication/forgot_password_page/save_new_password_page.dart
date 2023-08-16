import 'package:flutter/material.dart';
import '../../../routes/route_named.dart';
import '../../utils/assest_management.dart';

class SaveNewPasswordPage extends StatefulWidget {
  const SaveNewPasswordPage({super.key});

  @override
  State<SaveNewPasswordPage> createState() => _SaveNewPasswordPageState();
}

class _SaveNewPasswordPageState extends State<SaveNewPasswordPage> {
  final keySavePassword = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  bool showPassword = true;
  bool showPasswordIcon = true;
  bool showConfirmPassword = true;
  bool showConfirmPasswordIcon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F5),
      body: GestureDetector(onTap: () {
        FocusScope.of(context).unfocus();
      },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: keySavePassword,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AssetsManagement.logo),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AssetsManagement.timeLineStep3),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: Text('Enter Your New PassWord',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscuringCharacter: '*',
                      obscureText: showPassword,
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'New Password',
                        hintStyle: const TextStyle(
                            fontSize: 20, color: Colors.black54),
                          border: InputBorder.none,
                          fillColor: Colors.white,filled: true,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                                showPasswordIcon = !showPasswordIcon;
                              });
                            },
                            icon: Icon(showPasswordIcon
                                ? Icons.visibility_off
                                : Icons.visibility)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password can not be empty';
                        }
                        RegExp passwordExp = RegExp(
                            '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@\$%^&*-]).{8,18}\$');
                        if (!passwordExp!.hasMatch(value)) {
                          return 'Your Password is invalid';
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscuringCharacter: '*',
                      obscureText: showConfirmPassword,
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle: const TextStyle(
                              fontSize: 20, color: Colors.black54),
                          border: InputBorder.none,
                          fillColor: Colors.white,filled: true,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showConfirmPassword = !showConfirmPassword;
                                showConfirmPasswordIcon = !showConfirmPasswordIcon;
                              });
                            },
                            icon: Icon(showConfirmPasswordIcon
                                ? Icons.visibility_off
                                : Icons.visibility),
                          )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password can not be empty';
                        }
                        if (value != passwordController.text) {
                          return 'Password and Confirm Password not same';
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 15,
                      color: Colors.transparent,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(const Color(0xFF9D170F)),
                          ),
                          onPressed: () {
                            keySavePassword.currentState!.validate();
                            if (keySavePassword.currentState!.validate() ==
                                true) {
                              Navigator.pushNamed(
                                  context, RouteNamed.successChangePassword);
                            }
                          },
                          child: const Text(
                            'SAVE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                          )),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
