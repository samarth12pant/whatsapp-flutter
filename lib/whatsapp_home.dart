import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
  with SingleTickerProviderStateMixin {
    List<String> names = ["Samarth", "Akriti","Eric","Nancy","Krish","Pop","Mark","Watson"];
    List<String> messages = ['  Great Job..'," Nice","  Keep it up", "  Great going", "  Wanna meet?","  Meeting at 12.","Give it a try","Welcome"];
    List<String> imgurl = ["https://raw.githubusercontent.com/samarth12pant/flutter-class/master/IMG-20191019-WA0006-01.jpeg","https://raw.githubusercontent.com/samarth12pant/flutter-class/master/1.jpg","https://raw.githubusercontent.com/samarth12pant/flutter-class/master/2.jpg","https://raw.githubusercontent.com/samarth12pant/flutter-class/master/3.jpg","https://raw.githubusercontent.com/samarth12pant/flutter-class/master/4.jpg","https://raw.githubusercontent.com/samarth12pant/flutter-class/master/5.jpg","https://raw.githubusercontent.com/samarth12pant/flutter-class/master/6.jpg","https://raw.githubusercontent.com/samarth12pant/flutter-class/master/7.jpg","https://raw.githubusercontent.com/samarth12pant/flutter-class/master/8.jpg"];
    List<String> time=["2:44 PM","2:32 PM","1:42 PM","1:19 PM","12:00 PM","8/28/20","7/26/20","31/12/2019"];
    List<Color>  clr = [Colors.green,Colors.green,Colors.white,Colors.green,Colors.white,Colors.green,Colors.white,Colors.white];
    List<String> number = ["3","2","4","1","2","5","4","3"];

    TabController _tabController;
    @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1);    //by default chat is opened
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",
        style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
       ),
     ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        elevation:  0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.camera_alt),),
            Row(
              children: [
                new Tab(text: "CHATS "),
                Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: Text(
                        "4",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: new Color(0xff075E54),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ]
          ), 
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context , int index ){
          return Card(
            elevation: 0.5,
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(names[index],
                style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgurl[index]),
              ),
              subtitle: Text(messages[index]),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(top:5),
                    child: Text(
                      time[index],
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                      ),
                    ) 
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                    decoration: BoxDecoration(
                      color:clr[index],
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: Text(
                        number[index],
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      )
    );
  }
}