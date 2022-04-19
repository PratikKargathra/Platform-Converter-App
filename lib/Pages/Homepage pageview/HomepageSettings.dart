import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/sorces.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: (isIOS)?130:40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
               Text("Date",style: AppTextStyle.settingBodyMedium,),
               Text("12/12/2012", style: AppTextStyle.settingBodyMedium,),
            ],
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: SizedBox.expand(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    )
                  ),
                  onPressed: (){
                    setState(() {
                      CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.dateAndTime,
                        onDateTimeChanged: (value) {

                        },
                        initialDateTime: DateTime.now(),
                      );
                    });
                  },
                  child: Text("Change Date", style: AppTextStyle.settingButtons,),

              ),
            ),
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Text("Time",style: AppTextStyle.settingBodyMedium,),
              Text("12:20:25 PM", style: AppTextStyle.settingBodyMedium,),
            ],
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: SizedBox.expand(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    )
                ),
                onPressed: (){
                },
                child: Text("Change Time",style: AppTextStyle.settingButtons,),

              ),
            ),
          ),
        ],
      ),
    );
  }
}



