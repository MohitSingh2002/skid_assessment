import 'dart:convert';

import 'package:skid_assessment/models/status_object.dart';

OrderStatus orderStatusFromJson(String str) => OrderStatus.fromJson(json.decode(str));

String orderStatusToJson(OrderStatus data) => json.encode(data.toJson());

class OrderStatus {
  OrderStatus({
    required this.dataDescription,
    required this.orderStatus,
    required this.statusObjects,
  });

  String dataDescription;
  String orderStatus;
  List<StatusObject> statusObjects;

  factory OrderStatus.fromJson(Map<String, dynamic> json) => OrderStatus(
    dataDescription: json["data-description"],
    orderStatus: json["order-status"],
    statusObjects: List<StatusObject>.from(json["status-objects"].map((x) => StatusObject.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data-description": dataDescription,
    "order-status": orderStatus,
    "status-objects": List<dynamic>.from(statusObjects.map((x) => x.toJson())),
  };
}
