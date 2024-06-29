import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/onboarding_screen_events.dart';
import 'package:myapp/onboarding_screen_state.dart';

class OnboardingScreenBloc extends Bloc<OnboardingScreenEvents, OnboardingScreenStates> {
  OnboardingScreenBloc():super(OnboardingScreenStates()){
    on<OnboardingScreenEvents>((event, emit){
      emit(OnboardingScreenStates(page: state.page));
    });
  }
}