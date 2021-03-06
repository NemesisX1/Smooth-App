import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../helpers/constants.dart';

class ClientCard extends StatelessWidget {
  const ClientCard({
    Key? key,
    this.amount,
    this.clientName,
    this.lastCommandDate,
  }) : super(key: key);
  final String? clientName;
  final String? lastCommandDate;
  final int? amount;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(
            top: kGlobalMargin,
            left: kGlobalMargin,
            right: kGlobalMargin,
            bottom: 1,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.clientName!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Gap(3),
                      Text(
                        this.lastCommandDate!,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "XOF ${amount}",
                    style: TextStyle(
                      color: kBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Gap(3),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
      );
}
