import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pawfy_app/core/constants/app_strings.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/app_logo.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';
import 'package:pawfy_app/core/widgets/gradient_icon.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
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
          child: AppLogo(width: 60, height: 60),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
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
                padding: const EdgeInsets.only(left: 6),
                child: GradientIcon(
                  icon: FaIcon(
                    FontAwesomeIcons.heart,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
        ///////////////////////////////
        // RichText(
        //  // textAlign: TextAlign.center,
        //   text: TextSpan(
        //     style: AppTextStyles.s16rInter(),
        //     children: [
        //       TextSpan(text: '$subTitle '),

        //           WidgetSpan(
        //             //alignment: PlaceholderAlignment.middle,
        //             child: GradientIcon(
        //               icon: FaIcon(
        //                 FontAwesomeIcons.heart,
        //                 size: 18,
        //                 color: Colors.white,
        //               ),
        //             ),
        //           ),

        //     ],
        //   ),
        // ),
        ///////////////////////////////////////////
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     CustomTextWidget(
        //       text: subTitle,
        //       style: AppTextStyles.s16rInter(),
        //       maxlines: 3,
        //     ),

        //     Padding(
        //       padding: const EdgeInsets.only(left: 6),
        //       child: GradientIcon(
        //         icon: FaIcon(
        //           FontAwesomeIcons.heart,
        //           size: 20,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
