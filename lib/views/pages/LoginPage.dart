import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
                  padding: EdgeInsets.only(top:20.0),
                ),
                new Container(
                  margin: EdgeInsets.only(top:20.0,left: 10.0,right: 10.0,bottom: 10.0),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      // labelText: '手机',
                        icon: new Icon(Icons.phone),
                        contentPadding: EdgeInsets.only(left: 10.0),
                        hintText: '手机'
                    ),
                    onSaved: (val) {
                      print(val);
                    },

                  ),
                )
                ,
                new Container(
                  margin: EdgeInsets.only(top:20.0,left: 10.0,right: 10.0,bottom: 10.0),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      // labelText: '手机',
                        icon: new Icon(Icons.phone),
                        contentPadding: EdgeInsets.only(left: 10.0),
                        hintText: '手机'
                    ),
                    onSaved: (val) {
                      print(val);
                    },

                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: new Text("立即注册"),
                ),
                new Container(
                  margin: EdgeInsets.all(20.0),
                  child: new MaterialButton(
                    child: Text("登录"),
                    elevation: 20,
                    minWidth: double.infinity,
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      Fluttertoast.showToast(msg:'我被点击了');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
}
