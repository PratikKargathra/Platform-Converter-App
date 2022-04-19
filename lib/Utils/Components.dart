import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/sorces.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  Widget build(BuildContext context) {


    return Container(
      color: CupertinoColors.black.withOpacity(0.15),
      child: Row(
        children: [
          const Expanded(
            flex: 7,
            child: DrawerDesign(),
          ),
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                color:CupertinoColors.black.withOpacity(0.15),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DrawerDesign extends StatefulWidget {
  const DrawerDesign({Key? key}) : super(key: key);

  @override
  State<DrawerDesign> createState() => _DrawerDesignState();
}

class _DrawerDesignState extends State<DrawerDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.7,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, bottom:10),
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: AppColor.primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(radius: 40,backgroundImage: NetworkImage("https://i.pinimg.com/236x/cf/3d/5c/cf3d5c4d31841a9dad1ac8362cecf9cd.jpg", )),
                  SizedBox(height: 10,),
                  Text("Pratik Kargathra", style: TextStyle(color: Colors.white, fontSize: 18),),
                  SizedBox(height: 5,),
                  Text("+91 90162 06523",style: TextStyle(color: Colors.white, fontSize: 15),),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.supervisor_account, color: Colors.black54,),
                      SizedBox(width: 30,),
                      Text("New Group"),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.account_circle_outlined, color: Colors.black54,),
                      SizedBox(width: 30,),
                      Text("Contacts"),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.phone , color: Colors.black54,),
                      SizedBox(width: 30,),
                      Text("Calls"),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.bookmark, color: Colors.black54,),
                      SizedBox(width: 30,),
                      Text("Saved Messages"),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.settings,color: Colors.black54,),
                      SizedBox(width: 30,),
                      Text("Settings"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      color: CupertinoColors.white,
    );
  }
}
