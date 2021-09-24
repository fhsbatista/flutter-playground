import 'package:flutter_playground/modules/home/domain/entities/feature.dart';

abstract class HomeState {}

class EmptyHomeState extends HomeState {}

class LoadedHomeState extends HomeState {
  final List<Feature> features;

  LoadedHomeState({required this.features});
}