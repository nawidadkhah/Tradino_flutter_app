import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/back_text_widget.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs_controller_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs_widget.dart';
import 'package:tradino_flutter/screens/login/login_controller.dart';
import 'package:tradino_flutter/screens/login/widgets/google_login.dart';
import 'package:tradino_flutter/screens/login/widgets/login_divider.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();
    final InputControllerWidget inputController = Get.find();

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.0.h),
              Center(
                child: Text(
                  "Login",
                  style: kSemiBoldCharcoal32,
                ),
              ),
              SizedBox(height: 24.0.h),
              InputWidget(
                title: "Email or username",
                textEditingController: controller.emailUesernameTextController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                radius: 8.0.r,
                inputHeight: 36.0.h,
                obscureText: false,
                isPasswordVisible: inputController.isFirstPasswordVisible,
              ),
              SizedBox(height: 12.0.h),
              InputWidget(
                title: "Password",
                textEditingController: controller.passwordTextController,
                textInputAction: TextInputAction.done,
                radius: 8.0.r,
                inputHeight: 36.0.h,
                obscureText: true,
                isPasswordVisible: inputController.isFirstPasswordVisible,
              ),
              SizedBox(height: 8.0.h),
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.offAllNamed("/forgotpassword");
                  },
                  child: Text(
                    "Forgot password",
                    style: kNormalBlack14,
                  ),
                ),
              ),
              SizedBox(height: 8.0.h),
              ButtonWidget(
                width: double.infinity,
                height: 52.0.h,
                title: "Login",
                onTap: () {},
              ),
              SizedBox(height: 12.0.h),
              const LoginDividerWidget(),
              SizedBox(height: 12.0.h),
              const GoogleLoginWidget(),
              SizedBox(height: 4.0.h),
              const Center(
                child: BackTextWidget(
                  title: "Dont have an account ?",
                  pageName: "sign up",
                  getName: "/signup",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
