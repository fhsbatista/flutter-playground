import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/modules/home/domain/usecases/get_features_usecase.dart';
import 'package:flutter_playground/modules/home/presentation/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetFeaturesUsecase getFeaturesUsecase;

  HomeCubit(this.getFeaturesUsecase) : super(EmptyHomeState()) {
    onInit();
  }

  void onInit() {
    _loadFeatures();
  }

  void _loadFeatures() {
    final features = getFeaturesUsecase();
    emit(LoadedHomeState(features: features));
  }
}