import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/size.model.dart';

final defaultConfiguration = Configuration(
  name: "",
  description: "",
  size: Size(
    id: 0,
    maxBases: 1,
    maxGarnishes: 1,
    maxIngredients: 1,
    metricSize: 100,
    name: "Default",
  ),
  bases: {},
  ingredients: {},
  garnishes: {},
);
