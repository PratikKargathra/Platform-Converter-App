import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platform_converter_app/sorces.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return (isIOS)?CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            padding: const EdgeInsets.all(0),
            child: const Icon(Icons.menu, color: CupertinoColors.black,),
            onPressed: (){
              showCupertinoDialog(context: context, builder: (context)=> const MyDrawer());
            },
          ),
          middle: const Text("Platform Convertor App"),
          trailing: CupertinoSwitch(
            value: isIOS,
            onChanged: (val){
              setState(() {
                isIOS = val;
              });
            },
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            IndexedStack(
              index: currentIndex,
              children: const [
                ChatsPage(),
                CallsPages(),
                SettingPage(),
              ],
            ),
            CupertinoTabBar(
              currentIndex: currentIndex,
              onTap: (val){
                setState(() {
                  currentIndex = val;
                });
              },
                items:  [
                   BottomNavigationBarItem(
                      icon: Icon((currentIndex==0)?CupertinoIcons.chat_bubble_2_fill:CupertinoIcons.chat_bubble_2, color: AppColor.primaryColor,),
                     label: "CHATS",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon((currentIndex==1)?CupertinoIcons.phone_fill:CupertinoIcons.phone, color: AppColor.primaryColor,),
                    label: "CALLS",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.settings, color: AppColor.primaryColor,),
                    label: "SETTINGS",
                  ),
                ],

            ),
          ],
        ),
    )
    :DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(context: context, builder: (context)=>  Container(height: 300, width: 300, color: Colors.black45,));
          },
          child: const Icon(Icons.add, color: Colors.white,),
          backgroundColor: AppColor.primaryColor,
        ),
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          title: const Text("Platform Convertor App"),
          actions: [
            Switch(value: isIOS, onChanged: (val){
              setState(() {
                isIOS = val;
              });
            })
          ],
          bottom:     TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            labelPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.084),
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            tabs:    const [
              Tab(text: "CHATS",),
              Tab(text: "CALLS",),
              Tab(text: "SETTINGS",),
            ],
          ),
        ),
        drawer: const DrawerDesign(),
        body: const TabBarView(
          children:  [
           ChatsPage(),
           CallsPages(),
           SettingPage(),
          ],
        ),
      ),
    )
    ;
  }
}
