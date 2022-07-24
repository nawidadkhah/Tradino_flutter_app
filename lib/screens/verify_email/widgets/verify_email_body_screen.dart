import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/screens/forgot_password/forgot_password_controller.dart';
import 'package:pinput/pinput.dart';

class VerifyEmailBodyWidget extends StatelessWidget {
  const VerifyEmailBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ForgotPasswordController email = Get.find();

    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: kCultured,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40.0.r),
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24.0.h),
              Text(
                "Verification your email !",
                style: kSemiBoldCharcoal24,
              ),
              SizedBox(height: 24.0.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Please Enter The Code Send to",
                    style: kNormalBlack14,
                  ),
                  Text(
                    email.emailTextController.text,
                    style: kNormalBlack14,
                  )
                ],
              ),
              SizedBox(height: 32.0.h),
              Text(
                "Resend code",
                style: kSemiBoldRoyalBlue16,
              ),
              SizedBox(height: 128.0.h),
              ButtonWidget(
                width: double.infinity,
                height: 52.0.h,
                title: "Verify",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}