import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.model.freezed.dart';

part 'order.model.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    required String id,
    required String userId,
    required DateTime orderDate,
    required double price,
    required double? priceDiscounted,
    required String? discountcode,
    required List<OrderPosition> positions,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class OrderPosition with _$OrderPosition {
  factory OrderPosition({
    required int index,
    required String configName,
    required String configId,
    required String cocktailId,
    required double price,
  }) = _OrderPosition;

  factory OrderPosition.fromJson(Map<String, dynamic> json) => _$OrderPositionFromJson(json);
}

  // id: string
  // userId: string
  // orderDate: Date
  // price: number
  // priceDiscounted: number | null
  // discountcode: string | null
  // positions: {
  //   index: number
  //   configName: string
  //   configId: string
  //   cocktailId: string
  // }[]