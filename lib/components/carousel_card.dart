import 'package:flutter/material.dart';
import 'package:skid_assessment/constants/constant_colors.dart';

class CarouselCard extends StatelessWidget {
  // const CarouselCard({Key? key}) : super(key: key);

  int invested, value, gain;
  double gainIncrement;

  CarouselCard({Key? key,
    required this.invested,
    required this.value,
    required this.gain,
    required this.gainIncrement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0,),
      padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 5.0),
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: ConstantColors.card,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0,),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    'Invested',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    '\$$invested',
                    style: const TextStyle(
                      color: ConstantColors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IBMPlexSans',
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Current',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    'Value',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    '\$$value',
                    style: const TextStyle(
                      color: ConstantColors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IBMPlexSans',
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Gains: ',
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'IBMPlexSans',
                  ),
                  children: [
                    TextSpan(
                      text: '\$$gain + $gainIncrement',
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'IBMPlexSans',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
