import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'check_event.dart';
part 'check_state.dart';

class CheckBloc extends Bloc<CheckEvent, CheckState> {
  CheckBloc() : super(CheckInitial(false)) {
    on<CheckEvent>((event, emit) {
    });
    on<AlreadyOnBoardingEvent>((event, emit) async{
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        var repeat = prefs.getBool('repeat')??false;
        emit(AlReadyOnBoarding(repeat));
    });
  }
}
