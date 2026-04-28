import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/app_logo.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';
import 'package:pawfy_app/core/widgets/gradient_icon.dart';

class AuthHeader extends StatelessWidget {
  AuthHeader({
    super.key,
    required this.title,
    required this.subTitle,
    this.showIcon = false,
  });
  final String title;
  final String subTitle;
  final bool? showIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: AppLogo(width: 40.w, height: 40.h),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: CustomTextWidget(
              text: title,
              style: AppTextStyles.s30bold(),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: CustomTextWidget(
                text: subTitle,
                style: AppTextStyles.s16rInter(),
                maxlines: 4,
                textAlign: TextAlign.center,
              ),
            ),
            if (showIcon!)
              Padding(
                padding: EdgeInsets.only(left: 6.w),
                child: GradientIcon(
                  icon: FaIcon(
                    FontAwesomeIcons.heart,
                    size: 18.sp,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
