import 'package:flutter_playground/modules/home/domain/entities/feature.dart';

class GetFeaturesUsecase {
  List<Feature> call() {
    return [Feature(name: 'QRCode')];
  }
}
