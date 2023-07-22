part of 'check_bloc.dart';

@immutable
abstract class CheckState {
  bool alReadyOnBoarding;

  CheckState(this.alReadyOnBoarding);
}
class CheckInitial extends CheckState {
  CheckInitial(super.alReadyOnBoarding);
}

class AlReadyOnBoarding extends CheckState {
  AlReadyOnBoarding(super.alReadyOnBoarding);

}

