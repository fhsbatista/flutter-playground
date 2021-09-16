import 'package:flutter_playground/modules/home/domain/usecases/get_features_usecase.dart';
import 'package:flutter_playground/modules/home/presentation/home_cubit.dart';
import 'package:stark/stark.dart';

final homeDependencies = {
  single<GetFeaturesUsecase>((i) => GetFeaturesUsecase()),
  single<HomeCubit>((i) => HomeCubit(i.get())),
};