import 'package:flutter_app/models/ColourProperties.dart';
import 'package:flutter_app/color_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


abstract class ColorState {}

class LoadingColors extends ColorState {}

class ListColorsSuccess extends ColorState {
  final List<ColourProperties> colors;

  ListColorsSuccess({this.colors});
}

class ListColorsFailure extends ColorState {
  final Exception exception;

  ListColorsFailure({this.exception});
}

class ColorCubit extends Cubit<ColorState> {
  final _colorRepo = ColorRepository();

  ColorCubit() : super(LoadingColors());

  void  getColors() async {
    if (state is ListColorsSuccess == false) {
      emit(LoadingColors());
    }

    try {
      final Colors = await _colorRepo.getColors();
      emit(ListColorsSuccess(colors: Colors));
    } catch (e) {
      emit(ListColorsFailure(exception: e));
    }
  }

  void createColor(int red) async {
    await _colorRepo.createColor(red, red+1, red+1);
    getColors();
  }

  void observeColor(){
    final stream = _colorRepo.observeColor();
    stream.listen((_) => getColors());
  }

}