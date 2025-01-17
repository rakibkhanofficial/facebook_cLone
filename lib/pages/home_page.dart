import 'package:facebook_clone/models/status_model.dart';
import 'package:facebook_clone/models/suggestion_model.dart';
import 'package:facebook_clone/widgets/home_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/ThemeColors.dart';
import '../widgets/status_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.white,

            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          title: Text(widget.title, style: const TextStyle(color: ThemeColors.blueAccent, fontWeight: FontWeight.bold, fontSize: 30),),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 10.0),
              child: CircleAvatar(radius: 20,backgroundColor: Colors.black12, child: IconButton(icon: Image.asset("assets/search.png", height: 20, width: 20,), onPressed: () {  },),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 12.0),
              child: CircleAvatar(radius: 20,backgroundColor: Colors.black12, child: IconButton(icon: Image.asset("assets/messenger.png", height: 20, width: 20,), onPressed: () {  },),),
            )
          ],

          bottom: const TabBar(
            indicatorColor: ThemeColors.blueAccent,
            labelColor: ThemeColors.blueAccent,
            unselectedLabelColor: Colors.black87,
            tabs: [
              Tab(icon: ImageIcon(AssetImage("assets/home.png"), color: ThemeColors.blueAccent,),),
              Tab(icon: ImageIcon(AssetImage("assets/watch.png"), color: Colors.black87,),),
              Tab(icon: ImageIcon(AssetImage("assets/user.png"), color: Colors.black87,),),
              Tab(icon: ImageIcon(AssetImage("assets/market.png"), color: Colors.black87,),),
              Tab(icon: ImageIcon(AssetImage("assets/notification.png"), color: Colors.black87,),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeWidget(),
            const Center(child: Text("N/A"),),
            const Center(child: Text("N/A"),),
            const Center(child: Text("N/A"),),
            const Center(child: Text("N/A"),),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}