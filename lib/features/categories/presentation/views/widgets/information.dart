import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utils/style.dart';
import 'package:graduation/features/categories/data/model/landmark_on_cat_model/landmark_on_cat_model.dart';
import 'package:graduation/features/categories/presentation/manger/more_info_cubit/more_info_cubit.dart';

// ignore: must_be_immutable
class Information extends StatelessWidget {
  Information({Key? key, required this.landmarkoncatModel}) : super(key: key);
  final LandmarkOnCatModel landmarkoncatModel;

  bool showFullText = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoreInfoCubit, MoreInfoState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is MoreInfoInitial) {
          BlocProvider.of<MoreInfoCubit>(context).viewmore(
            text: landmarkoncatModel.description!.substring(0,580),
            showmore: showFullText,
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  showFullText = false;
                  BlocProvider.of<MoreInfoCubit>(context).viewmore(
                    text: landmarkoncatModel.description!.substring(0,580),
                    showmore: showFullText,
                  );
                },
                child: Text(
                  '${BlocProvider.of<MoreInfoCubit>(context).Text}',
                  style: Textstyle.textStyle12
                      .copyWith(fontWeight: FontWeight.w400, height: 1.5),
                ),
              ),
              if (!showFullText)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextButton(
                    onPressed: () {
                      showFullText = true;
                      BlocProvider.of<MoreInfoCubit>(context).viewmore(
                        text: landmarkoncatModel.description!,
                        showmore: showFullText,
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'View more Details',
                            style: Textstyle.viewmoretext,
                          ),
                          Icon(Icons.keyboard_arrow_down,
                              color: Color(0xff00A2D5))
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
