import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_starter/theme/index.dart';

part 'setting_bloc_event.dart';
part 'setting_bloc_state.dart';

class SettingsBloc extends Bloc<SettingsBlocEvent, SettingsBlocState>{
  SettingsBloc() : super(SettingsState()){
    on<ChangeTheme>((event, emit) =>
        emit(SettingsBlocState.clone(state, themeName: event.themeName)));
  }
}