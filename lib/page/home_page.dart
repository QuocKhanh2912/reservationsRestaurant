import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/check_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
      // WillPopScope(
      // onWillPop: () {
      //   return Future(() => false);
      // },
      // child:
      Scaffold(
        body: SafeArea(
          child: BlocBuilder<CheckBloc, CheckState>(
            builder: (context, state) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Image.asset('assets/images/logo/logo.png'),
                    ),
                    const Padding(
                      padding:
                      EdgeInsets.only(left: 26.0, right: 26.0, bottom: 24.0),
                      child: Text('HOME PAGE',
                          style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                        onPressed: () {print(state);},
                        child: const Text('Check state'))
                  ],
                ),
              );
            },
          ),
        ),
        //),
      );
  }
}
