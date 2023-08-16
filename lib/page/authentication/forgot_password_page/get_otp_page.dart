import 'package:flutter/material.dart';
import '../../../routes/route_named.dart';
import '../../utils/assest_management.dart';

class GetOTPPage extends StatefulWidget {
  const GetOTPPage({super.key});

  @override
  State<GetOTPPage> createState() => _GetOTPPageState();
}

class _GetOTPPageState extends State<GetOTPPage> {
  final keyOfGetOTP = GlobalKey<FormState>();

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
              key: keyOfGetOTP,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AssetsManagement.logo),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AssetsManagement.timeLineStep1),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: Text('FORGOT PASSWORD',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: Text(
                      textAlign: TextAlign.center,
                      'We will send you an OTP on your phone number',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                          hintText: 'Enter your phone number',
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.black54),
                          border: InputBorder.none,
                          fillColor: Colors.white,filled: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'phone number can not be empty';
                        }
                        RegExp emailExp = RegExp(
                            '^[+]?[0-9]{9,15}\$');
                        if (!emailExp!.hasMatch(value)) {
                          return 'Your phone number is invalid';
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
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF9D170F)),
                          ),
                          onPressed: () {
                            keyOfGetOTP.currentState!.validate();
                            if (keyOfGetOTP.currentState!.validate() == true) {
                              Navigator.pushNamed(context, RouteNamed.verifyPage);
                            }
                          },
                          child: const Text(
                            'GET OTP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                          )),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNamed.loginPage);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30,left: 8,right: 8),
                    child: Text(
                      'Return to Log in',
                      style: (TextStyle(
                          color: Color(0xFF9D170F),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF9D170F),
                          fontSize: 15)),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
