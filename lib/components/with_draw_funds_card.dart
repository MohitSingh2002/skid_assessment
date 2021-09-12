import 'package:flutter/material.dart';
import 'package:skid_assessment/constants/constant_colors.dart';

class WithDrawFundsCard extends StatelessWidget {
  // const WithDrawFundsCard({Key? key}) : super(key: key);

  bool isWithDrawFunds;

  WithDrawFundsCard({Key? key, required this.isWithDrawFunds}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0,),
      padding: const EdgeInsets.all(20.0,),
      decoration: BoxDecoration(
        color: isWithDrawFunds ? ConstantColors.white : ConstantColors.green,
        border: Border.all(color: isWithDrawFunds ? ConstantColors.black : ConstantColors.green,),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0,),
        ),
      ),
      child: Center(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0,),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isWithDrawFunds ? ConstantColors.black : ConstantColors.white,
                ),
              ),
              child: Icon(isWithDrawFunds ? Icons.download : Icons.upload, color: isWithDrawFunds ? ConstantColors.black : ConstantColors.white,),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              isWithDrawFunds ? 'With Draw\nFunds' : 'Invest Now',
              style: isWithDrawFunds ? const TextStyle() : const TextStyle(
                color: ConstantColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
