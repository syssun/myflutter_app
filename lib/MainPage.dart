import 'package:flutter/material.dart';
import 'package:myflutter_app/views/FindPage.dart';
import 'package:myflutter_app/views/HomePage.dart';
import 'package:myflutter_app/views/MinePage.dart';
class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     return new MaterialApp(
       debugShowCheckedModeBanner: false,
         theme: new ThemeData(
             primarySwatch: Colors.blue
         ),
       home: new _MainPageWidget(),
     );
  }
}

class _MainPageWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new _MainPageState();
  }
}
class _MainPageState extends State<_MainPageWidget> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;

  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页','发现','我的'];
  var _pageList;
  void intData(){
    tabImages = [
      [new Icon(Icons.home),new Icon(Icons.add_circle_outline)],
      [new Icon(Icons.find_in_page),new Icon(Icons.find_in_page)],
      [new Icon(Icons.person),new Icon(Icons.person_outline)],
    ];
    _pageList=[new HomePage(),new FindPage(),new MinePage()];
  }

  @override
  Widget build (BuildContext context){
     intData();
     return Scaffold(
        // body: _pageList[_tabIndex],
       body: IndexedStack(index: _tabIndex, children:_pageList),
       bottomNavigationBar: new BottomNavigationBar(
         items: <BottomNavigationBarItem>[
           new BottomNavigationBarItem(
               icon: tabImages[0][0],
               //activeIcon: tabImages[0][1],
               title: getTabTitle(0)),
           new BottomNavigationBarItem(
               icon: tabImages[1][0],
               title: getTabTitle(1)),
           new BottomNavigationBarItem(
               icon: tabImages[2][0],
               title: getTabTitle(2)),
           ],
         type: BottomNavigationBarType.fixed,
         currentIndex: _tabIndex,
         iconSize: 24.0,
         onTap: (index){
           setState(() {
             _tabIndex = index ;
           });
         },
       ),
     );
  }
  Text getTabTitle(int curIndex){
    if(curIndex == _tabIndex){
      return new Text(appBarTitles[curIndex],
        style: new TextStyle(
            fontSize: 14.0,
            color: const Color(0xff1296db)
        ),);
    }else {
      return new Text(appBarTitles[curIndex],
        style: new TextStyle(
            fontSize: 14.0,
            color: const Color(0xff515151)
        ),);
    }
  }

}