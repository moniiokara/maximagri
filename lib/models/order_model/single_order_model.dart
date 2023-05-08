import 'package:json_annotation/json_annotation.dart';
import 'package:maximagri/models/order_model/dispatch_info_model.dart';
import 'package:maximagri/models/order_model/order_payment_model.dart';
import 'package:maximagri/models/order_model/order_status_enum.dart';
import 'package:maximagri/models/order_model/order_stops_model.dart';
import 'package:maximagri/models/user_profile_model/account_uid_model.dart';
part 'single_order_model.g.dart';

@JsonSerializable()
class SingleOrder {
  String dealerUID;
  String dealerName;
  String orderSerial;
  double orderTotal;
  int orderQuantity;
  DateTime dateTime;
  OrderStatus orderStatus;
  DispatchInfo dispatchInfo;
  OrderPayment orderPayment;
  AccountUID accountUID;
  List<OrderStops> orderStops;

  SingleOrder({
    required this.dealerUID,
    required this.dealerName,
    required this.orderSerial,
    required this.orderTotal,
    required this.orderQuantity,
    required this.accountUID,
    required this.dateTime,
    required this.orderStatus,
    required this.orderStops,
    required this.orderPayment,
    required this.dispatchInfo,
  });

  updateOrderStatus(OrderStatus newOrderStatus) {
    orderStatus = newOrderStatus;
  }

  updateDispatchInfo(DispatchInfo newDispatchInfo) {
    dispatchInfo = newDispatchInfo;
  }

  factory SingleOrder.fromJson(Map<String, dynamic> json) =>
      _$SingleOrderFromJson(json);
  Map<String, dynamic> toJson() => _$SingleOrderToJson(this);
}
