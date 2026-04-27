import 'package:flutter/material.dart';
import 'package:pawfy_app/core/constants/app_colors.dart';
import 'package:pawfy_app/core/theme/app_text_styles.dart';
import 'package:pawfy_app/core/widgets/app_logo.dart';
import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.lightpurple, AppColors.primaryColor],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Spacer(flex: 1),
                    Container(
                      width: width * 0.28,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white70.withValues(alpha: .2),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppLogo(),
                          //Icon(Icons.pets, color: AppColors.secondaryColor),
                          CustomTextWidget(
                            text: 'Pawfy',
                            style: AppTextStyles.s18rPlaypenSans(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Container(
                      width: 300,
                      // width*.7,
                      // 300,
                      height: 300,
                      //height*.7,
                      //300,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 12,
                          color: Colors.white70.withValues(alpha: .2),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Spacer(flex: 1),
                        CustomTextWidget(
                          text: 'Welcome to Pawfy',
                          style: AppTextStyles.s30bold().copyWith(
                            fontSize: width * 0.07,
                            color: AppTextColors.onPrimary,
                            // Colors.white,
                          ),
                        ),

                        //  Spacer(flex: 1),
                        SizedBox(height: height * 0.03),
                        CustomTextWidget(
                          text:
                              'Everything your furry friends need, delivered right to your door',
                          style: AppTextStyles.s16rInter().copyWith(
                            fontSize: width * 0.045,
                            color: AppColors.backgroundColor,
                          ),
                          textAlign: TextAlign.center,
                          maxlines: 4,
                        ),
                        // Spacer(flex: 1),
                        // SizedBox(height: height * 0.04),
                        // SizedBox(
                        //   width: 276,
                        //   height: 64,
                        //   child: ElevatedButton(
                        //     style: ElevatedButton.styleFrom(
                        //       backgroundColor: AppColors.primaryColor,
                        //     ),
                        //     onPressed: () {},
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         //  Spacer(flex: 4),
                        //         CustomTextWidget(
                        //           text: 'Next',
                        //           style: AppTextStyles.s18rPlaypenSans().copyWith(
                        //             color: AppColors.backgroundColor,
                        //           ),
                        //         ),
                        //         // Spacer(flex: 1),
                        //         Icon(
                        //           Icons.start_outlined,
                        //           color: AppColors.backgroundColor,
                        //           size: 24,
                        //         ),
                        //         //  Spacer(flex: 4),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Spacer(flex: 1),
                      ],
                    ),
                    // Container(
                    //   width: width * 0.85,
                    //   height: height * 0.35,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(40),
                    //     color: AppColors.backgroundColor,
                    //     // Colors.white70.withValues(alpha: .2),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(
                    //       left: 14,
                    //       right: 14,
                    //       bottom: 14,
                    //       top: 14,
                    //     ),
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Spacer(flex: 1),
                    //         CustomTextWidget(
                    //           text: 'Welcome to Pawfy',
                    //           style: AppTextStyles.s30bold().copyWith(
                    //             fontSize: width * 0.07,
                    //             color: AppTextColors.primaryText,
                    //             // Colors.white,
                    //           ),
                    //         ),
                    //         Spacer(flex: 1),
                    //         CustomTextWidget(
                    //           text:
                    //               'Everything your furry friends need, delivered right to your door',
                    //           style: AppTextStyles.s18rInter().copyWith(
                    //             fontSize: width * 0.045,
                    //             color: AppTextColors.secondaryText,
                    //           ),
                    //           textAlign: TextAlign.center,
                    //         ),
                    //         Spacer(flex: 1),

                    //         SizedBox(
                    //           width: 276,
                    //           height: 64,
                    //           child: ElevatedButton(
                    //             style: ElevatedButton.styleFrom(
                    //               backgroundColor: AppColors.primaryColor,
                    //             ),
                    //             onPressed: () {},
                    //             child: Row(
                    //               mainAxisAlignment: MainAxisAlignment.center,
                    //               children: [
                    //                 Spacer(flex: 4),
                    //                 CustomTextWidget(
                    //                   text: 'Next',
                    //                   style: AppTextStyles.s18rPlaypenSans()
                    //                       .copyWith(
                    //                         color: AppColors.backgroundColor,
                    //                       ),
                    //                 ),
                    //                 Spacer(flex: 1),
                    //                 Icon(
                    //                   Icons.start_outlined,
                    //                   color: AppColors.backgroundColor,
                    //                   size: 24,
                    //                 ),
                    //                 Spacer(flex: 4),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //         Spacer(flex: 1),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.08,
                left: MediaQuery.of(context).size.width * 0.22,
                child: Image.asset('assets/splachnobg.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:pawfy_app/core/constants/app_colors.dart';
// import 'package:pawfy_app/core/theme/app_text_styles.dart';
// import 'package:pawfy_app/core/widgets/custom_text_widget.dart';

// class SplashView extends StatelessWidget {
//   const SplashView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [AppColors.lightpurple, AppColors.primaryColor],
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//           ),
//         ),
//         child: SafeArea(
//           child: Stack(
//             children: [
//               Center(
//                 child: Column(
//                   //crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Spacer(flex: 1),
//                     Container(
//                       width: width * 0.28,
//                       height: height * 0.06,
//                       decoration: BoxDecoration(
//                         color: Colors.white70.withValues(alpha: .2),
//                         borderRadius: BorderRadius.circular(24),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.pets, color: AppColors.secondaryColor),
//                           CustomTextWidget(
//                             text: 'Pawfy',
//                             style: AppTextStyles.s18rPlaypenSans(),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: height * 0.03),
//                     Container(
//                       width: 300,
//                       // MediaQuery.of(context).size.width*.7,
//                       height: 300,
//                       // MediaQuery.of(context).size.height*.7,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           width: 12,
//                           color: Colors.white70.withValues(alpha: .2),
//                         ),
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.02),
//                     Container(
//                       width: width * 0.85,
//                       height: height * 0.35,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(40),
//                         color: AppColors.backgroundColor,
//                         // Colors.white70.withValues(alpha: .2),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                           left: 14,
//                           right: 14,
//                           bottom: 14,
//                           top: 14,
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Spacer(flex: 1),
//                             CustomTextWidget(
//                               text: 'Welcome to Pawfy',
//                               style: AppTextStyles.s30bold().copyWith(
//                                 fontSize: width * 0.07,
//                                 color: AppTextColors.primaryText,
//                                 // Colors.white,
//                               ),
//                             ),
//                             Spacer(flex: 1),
//                             CustomTextWidget(
//                               text:
//                                   'Everything your furry friends need, delivered right to your door',
//                               style: AppTextStyles.s18rInter().copyWith(
//                                 fontSize: width * 0.045,
//                                 color: AppTextColors.secondaryText,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             Spacer(flex: 1),

//                             SizedBox(
//                               width: 276,
//                               height: 64,
//                               child: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: AppColors.primaryColor,
//                                 ),
//                                 onPressed: () {},
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Spacer(flex: 4),
//                                     CustomTextWidget(
//                                       text: 'Next',
//                                       style: AppTextStyles.s18rPlaypenSans()
//                                           .copyWith(
//                                             color: AppColors.backgroundColor,
//                                           ),
//                                     ),
//                                     Spacer(flex: 1),
//                                     Icon(
//                                       Icons.start_outlined,
//                                       color: AppColors.backgroundColor,
//                                       size: 24,
//                                     ),
//                                     Spacer(flex: 4),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Spacer(flex: 1),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Spacer(flex: 2),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 top: MediaQuery.of(context).size.height * 0.08,
//                 left: MediaQuery.of(context).size.width * 0.22,
//                 child: Image.asset('assets/splachnobg.png'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
