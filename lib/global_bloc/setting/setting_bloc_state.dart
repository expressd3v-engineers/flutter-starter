part of 'package:flutter_starter/global_bloc/setting/setting_bloc.dart';

abstract class SettingsBlocStateInterface extends Equatable{

  final ThemeName? themeName;

  ThemeData get theme;

  const SettingsBlocStateInterface({this.themeName});
}

class SettingsBlocState implements SettingsBlocStateInterface {

  SettingsBlocState({this.themeName});

  @override
  List<Object> get props => [];

  @override
  bool? get stringify => true;

  @override
  final ThemeName? themeName;

  @override
  ThemeData get theme {

    switch (themeName) {
      case ThemeName.primary:
        return primaryTheme;
      case ThemeName.light:
        return lightTheme;
      case ThemeName.dark:
        return darkTheme;
      default:
        return darkTheme;
    }
    }

  static SettingsBlocState clone(SettingsBlocState model, {ThemeName? themeName}){
    if(model is SettingsState){
      return SettingsStateAlt
          .clone(model, themeName: model.themeName ?? themeName);
    }else {
      return SettingsState
          .clone(model, themeName: model.themeName ?? themeName);
    }
  }

}

class SettingsState extends SettingsBlocState{

  SettingsState({themeName}) : super(themeName: themeName);

  SettingsState.clone(SettingsBlocState model, {ThemeName? themeName})
      : this(themeName: themeName ?? model.themeName);
}

class SettingsStateAlt extends SettingsBlocState{

  SettingsStateAlt({themeName}): super(themeName: themeName);

  SettingsStateAlt.clone(SettingsBlocState model, {ThemeName? themeName})
      : this(themeName: themeName ?? model.themeName);
}