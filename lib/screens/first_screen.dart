import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:skid_assessment/components/carousel_card.dart';
import 'package:skid_assessment/components/savings_card.dart';
import 'package:skid_assessment/components/with_draw_funds_card.dart';
import 'package:skid_assessment/constants/constant_colors.dart';
import 'package:skid_assessment/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.white,
      appBar: AppBar(
        backgroundColor: ConstantColors.white,
        elevation: 0.0,
        leading: const Icon(Icons.menu, color: Colors.black,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/userimage.jpeg'),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'welcome back',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Robert',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0,),
                  decoration: const BoxDecoration(
                    color: ConstantColors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0,),
                      bottomLeft: Radius.circular(5.0,),
                    )
                  ),
                  child: Center(
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: ConstantColors.yellow,
                          child: Icon(Icons.alarm, color: ConstantColors.white,),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'completed your\npayment setup',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            CarouselSlider.builder(
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2,),
                ),
                itemCount: 5,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
                    },
                    child: CarouselCard(
                      invested: 900,
                      value: 1000,
                      gain: 100,
                      gainIncrement: 10.01,
                    ),
                  );
                },
            ),
            Row(
              children: const [
                Expanded(
                  child: SavingsCard(),
                ),
                Expanded(
                  child: SavingsCard(),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: WithDrawFundsCard(
                    isWithDrawFunds: true,
                  ),
                ),
                Expanded(
                  child: WithDrawFundsCard(
                    isWithDrawFunds: false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
