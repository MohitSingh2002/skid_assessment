import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skid_assessment/components/fund_card.dart';
import 'package:skid_assessment/components/order_status_card.dart';
import 'package:skid_assessment/constants/constant_colors.dart';
import 'package:skid_assessment/models/order_status.dart';
import 'package:skid_assessment/services/api_service.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  late OrderStatus orderStatus;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    getOrderStatus();
  }

  void getOrderStatus() {
    setState(() {
      isLoading = true;
    });
    ApiService().getAllOrderStatus().then((value) {
      setState(() {
        orderStatus = value!;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? const Scaffold(
      backgroundColor: ConstantColors.white,
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(
            color: ConstantColors.green,
          ),
        ),
      ),
    ) : Scaffold(
      backgroundColor: ConstantColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: ConstantColors.black,
        ),
        backgroundColor: ConstantColors.white,
        elevation: 0.0,
        title: const Text(
          'Order Status',
          style: TextStyle(
            color: ConstantColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: ConstantColors.green,
                        child: FaIcon(FontAwesomeIcons.checkCircle, color: ConstantColors.white,),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '\$1999',
                        style: TextStyle(
                          color: ConstantColors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    '28th April\n2021',
                    style: TextStyle(
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const FundCard(),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0,),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ConstantColors.grey,
                  borderRadius: BorderRadius.circular(10.0,),
                ),
                child: const ListTile(
                  horizontalTitleGap: 1.0,
                  title: Text(
                    'Order ID    :    5419849849859841',
                    style: TextStyle(
                      color: ConstantColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0,),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ConstantColors.grey,
                  borderRadius: BorderRadius.circular(10.0,),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Order Status',
                          style: TextStyle(
                            color: ConstantColors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              orderStatus.orderStatus,
                              style: const TextStyle(
                                color: ConstantColors.green,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Icon(Icons.arrow_circle_up),
                          ],
                        ),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: orderStatus.statusObjects.length,
                      itemBuilder: (context, index) {
                        return OrderStatusCard(
                          statusObject: orderStatus.statusObjects.elementAt(index),
                        );
                      }
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0,),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ConstantColors.grey,
                  borderRadius: BorderRadius.circular(10.0,),
                ),
                child: const ListTile(
                  horizontalTitleGap: 1.0,
                  leading: FaIcon(FontAwesomeIcons.questionCircle, color: ConstantColors.black,),
                  title: Text(
                    'Help & Support',
                    style: TextStyle(
                      color: ConstantColors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSans',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: ConstantColors.blueButton,
                  ),
                  child: const Center(
                    child: Text(
                      'Repeat order',
                      style: TextStyle(
                        color: ConstantColors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
