import 'package:flutter/material.dart';
import 'package:myflutter_app/widgets/MyWidgets.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new LoginPageState();
  }
}
class LoginPageState extends State<LoginPage>{
    @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: MyWidgets.buildAppBar(context, '登录'),
        body: new Container(
          child: Center(
            child: Column(
              children: <Widget>[
                new Container(
                  child: MyWidgets.imageAssetWithSize("images/icons/yuyue.png"),
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: '手机',
                  ),
                  onSaved: (val) {
                    print(val);
                  },
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: '密码',
                  ),
                  onSaved: (val) {
                    print(val);
                  },
                ),
                new Text("立即注册"),
                new MaterialButton(
                  child: Text("登录"),
                  elevation: 20,
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){
                    print('我被点击了');
                  },
                ),
              ],
            ),
          ),
        ),
      );
    }
}
