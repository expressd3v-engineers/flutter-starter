part of 'package:flutter_starter/global_bloc/setting/setting_bloc.dart';

abstract class SettingsBlocEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class ChangeTheme extends SettingsBlocEvent{
  final ThemeName themeName;

  ChangeTheme(this.themeName);
}