import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myflutter_app/utils/HttpUtils.dart';
import 'package:myflutter_app/widgets/MyWidgets.dart';
import 'package:myflutter_app/entities/HomeMenus.dart';
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new _Page();
  }
}
class _Page extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return layout(context);
  }
  Widget layout(BuildContext context){
    return new Scaffold(
        appBar:MyWidgets.buildAppBar(context, "首页"),
        body:
        ListView(
          padding: EdgeInsets.only(bottom: 30),
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 160.0,
                child: Swiper(
                  itemBuilder:(context,index)=> _swiperBuilder(context,index),
                  itemCount: swipterlist(context).length,
                  pagination: new SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.black54,
                        activeColor: Colors.white,
                        size: 8.0,
                        activeSize: 8,
                      )),
                  //control: new SwiperControl(),
                  scrollDirection: Axis.horizontal,
                  autoplay: true,
                  onTap: (index) => print('点击了第$index个'),
                )
            ),
            Flex(
              direction: Axis.horizontal,
              children: gridViewList(context),
            ),
            Flex(
              direction: Axis.horizontal,
              children: gridViewList2(context),
            ),
            Flex(
              direction: Axis.horizontal,

              children: gridViewList3(context),
            ),
          ],
        )
    );
  }
  List<Widget> swipterlist(BuildContext context){
    List<Widget> w = new List();
    w.add(MyWidgets.imageNetCache("http://pic25.nipic.com/20121112/9252150_150552938000_2.jpg"));
    w.add(MyWidgets.imageNetCache("http://pic16.nipic.com/20111006/6239936_092702973000_2.jpg"));
    w.add(MyWidgets.imageNetCache("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567179064933&di=c79c1b5e153c23facc616aa27ee18f92&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F908fa0ec08fa513db777cf78376d55fbb3fbd9b3.jpg"));
    return w ;
  }
  Widget _swiperBuilder(BuildContext context,int index) {
    List<Widget> s = swipterlist(context);
    return s[index];
  }
  Padding getText(title){
    TextStyle textStyle = new TextStyle(fontWeight: FontWeight.normal, fontSize: 14.0);
    return new Padding(
        padding: const EdgeInsets.only(top: 10),
        child: new Text(title,style: textStyle)
    );
  }
  List<Widget> gridViewList(BuildContext context){
    List<Widget> widlist = new List();
    widlist.add(buildItem(context,HomeMenus("预约上门", "images/icons/yuyue.png","")));
    widlist.add(buildItem(context,HomeMenus("家电回收", "images/icons/huishou.png","")));
    widlist.add(buildItem(context,new HomeMenus('木材物品', 'images/icons/micai.png', 'jisuanqi')));

    return widlist;
  }
  List<Widget> gridViewList2(BuildContext context){
    List<Widget> widlist = new List();
    widlist.add(buildItem(context,HomeMenus("家电预估", "images/icons/jiadian.png","")));
    widlist.add(buildItem(context,HomeMenus("跑腿服务", "images/icons/paotui.png","")));
    widlist.add(buildItem(context,HomeMenus("桌子椅子", "images/icons/zhuozi.png","")));
    return widlist;
  }
  List<Widget> gridViewList3(BuildContext context){
    List<Widget> widlist = new List();
    widlist.add(buildItem(context,new HomeMenus('家电维修', 'images/icons/weixiu.png', 'jisuanqi')));
    widlist.add(buildItem(context,HomeMenus('垃圾分类', 'images/icons/fenlei_two.png', 'jisuanqi')));
    widlist.add(buildItem(context,HomeMenus("扔垃圾","images/icons/laji.png","")));
    return widlist;
  }
  Widget buildItem(BuildContext context,HomeMenus homeMenus){
    return
      Expanded(
        flex: 1,
        child:new GestureDetector(
            onTap: (){
              print(HttpUtils.httpGetShelf("/calc"));
              Fluttertoast.showToast(
                  msg: homeMenus.title,
                  gravity: ToastGravity.BOTTOM
              );
            },
            child:
            Container(
              padding: EdgeInsets.only(top: 30.0),
              child:new Column(
                children: <Widget>[
                  MyWidgets.imageAssetWithSize(homeMenus.src,size: 40.0),
                  getText(homeMenus.title)
                ],
              ),
            )
        ) ,
      );
  }
}