import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:skid_assessment/constants/constant_colors.dart';
import 'package:skid_assessment/models/status_object.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderStatusCard extends StatelessWidget {
  // const OrderStatusCard({Key? key}) : super(key: key);

  StatusObject statusObject;

  OrderStatusCard({Key? key, required this.statusObject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.center,
      beforeLineStyle: const LineStyle(
        thickness: 3,
        color: ConstantColors.green,
      ),
      indicatorStyle: IndicatorStyle(
        width: 30.0,
        color: ConstantColors.green,
        iconStyle: IconStyle(
          color: ConstantColors.white,
          iconData: const IconData(0xe156, fontFamily: 'MaterialIcons'),
        ),
      ),
      startChild: ListTile(
        title: Text(
          DateFormat('dd MMMM yyyy').format(statusObject.date),
          style: const TextStyle(
            color: ConstantColors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: Text(
          statusObject.time,
          style: const TextStyle(
            color: ConstantColors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      endChild: ListTile(
        title: Text(
          statusObject.type,
          style: const TextStyle(
            color: ConstantColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          statusObject.status,
          style: const TextStyle(
            color: ConstantColors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
