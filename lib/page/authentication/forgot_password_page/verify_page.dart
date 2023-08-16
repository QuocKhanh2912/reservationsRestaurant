import 'package:flutter/material.dart';
import '../../../routes/route_named.dart';
import '../../utils/assest_management.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  final keyVerify = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F5),
      body: SafeArea(
        child: GestureDetector(onTap:() {
          FocusScope.of(context).unfocus();
        },
          child: SingleChildScrollView(
            child: Form(
              key: keyVerify,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AssetsManagement.logo),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AssetsManagement.timeLineStep2),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: Text('VERIFICATION',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: Text(
                      textAlign: TextAlign.center,
                      'Enter the OTP code that\nwe send you via SMS',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          hintText: 'Enter OTP Code',
                          hintStyle: TextStyle(
                              fontSize: 20, color: Colors.black54),
                          border: InputBorder.none,
                          fillColor: Colors.white,filled: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'OTP can not be empty';
                        }
                        RegExp otpExp = RegExp('^[+]?[0-9]{6}\$');
                        if (!otpExp.hasMatch(value)) {
                          return 'OTP is invalid';
                        }
                      },
                    ),
                  ),
                ),
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(top: 30,left: 8,right: 8),
                        child: Text(
                          'Dont\'t recevie code? Resend',
                          style: (TextStyle(
                              color: Color(0xFF9D170F),
                              decorationColor: Color(0xFF9D170F),
                              fontSize: 15)),
                        ),
                      ),
                    ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 8,right: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 15,
                      color: Colors.transparent,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all( const Color(0xFF9D170F)),
                          ),
                          onPressed: () {
                            keyVerify.currentState!.validate();
                            if (keyVerify.currentState!.validate() == true) {
                              Navigator.pushNamed(
                                  context, RouteNamed.saveNewPassword);
                            }
                          },
                          child: const Text(
                            'VERIFY',
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
