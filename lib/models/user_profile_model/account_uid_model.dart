import 'package:json_annotation/json_annotation.dart';
part 'account_uid_model.g.dart';

@JsonSerializable()
class AccountUID {
  String operationsUID;
  String zonalManagerUID;
  String salesManagerUID;
  String salesOfficerUID;

  AccountUID({
    required this.operationsUID,
    required this.zonalManagerUID,
    required this.salesManagerUID,
    required this.salesOfficerUID,
  });

  updateAccountUID({
    required String newOperationsUID,
    required String newZonalManagerUID,
    required String newSalesManagerUID,
    required String newSalesOfficerUID,
  }) {
    operationsUID = newOperationsUID;
    zonalManagerUID = newZonalManagerUID;
    salesManagerUID = newSalesManagerUID;
    salesOfficerUID = newSalesOfficerUID;
  }

  factory AccountUID.fromJson(Map<String, dynamic> json) =>
      _$AccountUIDFromJson(json);
  Map<String, dynamic> toJson() => _$AccountUIDToJson(this);
}
