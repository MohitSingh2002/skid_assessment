import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skid_assessment/constants/constant_colors.dart';

class SavingsCard extends StatelessWidget {
  const SavingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 10.0,),
      padding: const EdgeInsets.all(20.0,),
      decoration: const BoxDecoration(
        color: ConstantColors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0,),
        ),
      ),
      child: Column(
        children: const [
          FaIcon(FontAwesomeIcons.piggyBank),
          Text(
            'Savings',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
