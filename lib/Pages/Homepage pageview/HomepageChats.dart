import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/sorces.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: chats.map((e) => GestureDetector(
        onTap: (){
          (isIOS)?null:showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(80.0),
                ),
              ),
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(e.photo),
                      ),
                      const SizedBox(height: 20,),
                      Text(e.name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: AppColor.primaryColor),),
                      const SizedBox(height: 8,),
                      const Text("+91 9879249109", style: TextStyle(color: Colors.black45, fontSize: 18),),
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox.expand(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: AppColor.primaryColor,
                            ),
                            onPressed: (){
                            },
                            child: Text("Send Message",style: AppTextStyle.settingButtons.copyWith(fontSize: 18),),

                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox.expand(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: AppColor.primaryColor,
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text("Cancle",style: AppTextStyle.settingButtons.copyWith(fontSize: 18),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration:  const BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                  ),
                );
              });
        },
        child: Container(
          color: AppColor.whiteColor,
          height: 80,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(radius: 30,backgroundColor: AppColor.primaryColor, backgroundImage: NetworkImage(e.photo),),
              const SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     Text(e.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                  const SizedBox(height: 10,),
                  Text(e.description),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 16,),
                  Text(e.time, style: TextStyle(color: Colors.black.withOpacity(0.75)),),
                ],
              )
            ],
          ),
        ),
      )).toList(),
    );
  }
}

