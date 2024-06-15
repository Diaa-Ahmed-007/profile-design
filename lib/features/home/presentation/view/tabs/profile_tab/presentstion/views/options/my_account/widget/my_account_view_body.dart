import 'package:flutter/material.dart';
import 'package:flutter_phone_number_field/flutter_phone_number_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/custom_account_text_field.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/profile_details_widget.dart';

class MyAccountViewBody extends StatelessWidget {
  const MyAccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfileDetailsWidget(
              isEmailVisable: false, isMoreIconVisable: true),
          Container(
            padding: EdgeInsets.all(20.w),
            margin: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.05), blurRadius: 10.r)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'profile Details',
                  style:
                      TextStyles.titles.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 14.h,
                ),
                customAcountTextField(
                  title: "jacob Smith",
                  controller: TextEditingController(),
                ),
                SizedBox(
                  height: 25.h,
                ),
                customAcountTextField(
                  title: "jacobsmith@example.com",
                  controller: TextEditingController(),
                ),
                SizedBox(
                  height: 25.h,
                ),
                //---------------------------------------------------------------------------
                FlutterPhoneNumberField(
                  initialCountryCode: "EG",
                  pickerDialogStyle: PickerDialogStyle(
                    countryFlagStyle: const TextStyle(fontSize: 17),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1)),
                    hintStyle: TextStyles.settingLabels
                        .copyWith(fontSize: 10.sp, fontWeight: FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                            color: Color(0xffD5E6FF), width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                            color: Color(0xffD5E6FF), width: 1)),
                  ),
                  languageCode: "en",
                  onChanged: (phone) {},
                  onCountryChanged: (country) {},
                  dropdownIconPosition: IconPosition.trailing,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 170.h,
          ),
          CustomProfileWideButton(
            onpressed: () {
              Navigator.pop(context);
            },
            label: 'Save',
          )
        ],
      ),
    );
  }
}
