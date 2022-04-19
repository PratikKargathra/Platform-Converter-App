import 'package:flutter/material.dart';
import 'package:platform_converter_app/sorces.dart';
import 'package:flutter/cupertino.dart';

class CallsPages extends StatefulWidget {
  const CallsPages({Key? key}) : super(key: key);

  @override
  State<CallsPages> createState() => _CallsPagesState();
}

class _CallsPagesState extends State<CallsPages> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: chats.map((e) => Container(
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
                Text(e.name,style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                Text(e.time, style: const TextStyle(color: Colors.grey),),
              ],
            ),
            const Spacer(),
            const SizedBox(height: 16,),
            const Icon(Icons.phone, color: CupertinoColors.activeGreen),
          ],
        ),
      )).toList(),
    );
  }
}

