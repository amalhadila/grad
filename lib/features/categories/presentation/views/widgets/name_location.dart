import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/core/utils/style.dart';
import 'package:graduation/features/categories/data/model/landmark_on_cat_model/landmark_on_cat_model.dart';

class locationtionwidget extends StatelessWidget {
  const locationtionwidget({
    super.key, required this.landmarkoncatModel,
  });
    final LandmarkOnCatModel landmarkoncatModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 47),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            landmarkoncatModel.name!,
            style: Textstyle.textStyle16,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: kmaincolor,
                size: 14,
              ),
              SizedBox(width: 7),
              Text(
                landmarkoncatModel.location!.governorate!,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1.2632,
                  letterSpacing: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
