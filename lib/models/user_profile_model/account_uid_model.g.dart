// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_uid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountUID _$AccountUIDFromJson(Map<String, dynamic> json) => AccountUID(
      operationsUID: json['operationsUID'] as String,
      zonalManagerUID: json['zonalManagerUID'] as String,
      salesManagerUID: json['salesManagerUID'] as String,
      salesOfficerUID: json['salesOfficerUID'] as String,
    );

Map<String, dynamic> _$AccountUIDToJson(AccountUID instance) =>
    <String, dynamic>{
      'operationsUID': instance.operationsUID,
      'zonalManagerUID': instance.zonalManagerUID,
      'salesManagerUID': instance.salesManagerUID,
      'salesOfficerUID': instance.salesOfficerUID,
    };
