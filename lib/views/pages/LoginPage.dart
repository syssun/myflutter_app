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
      //SingleChildScrollView
      return SingleChildScrollView(
        child: new Scaffold(
          resizeToAvoidBottomPadding: false,
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
                    margin: EdgeInsets.only(top:30.0,left: 10.0,right: 10.0,bottom: 10.0),
                    child: new TextFormField(
                      decoration: new InputDecoration(
                        // labelText: '手机',
                          icon: new Icon(Icons.phone),
                          contentPadding: EdgeInsets.only(left: 10.0),
                          hintText: '请输入手机号'
                      ),
                      onSaved: (val) {
                        print(val);
                      },

                    ),
                  )
                  ,
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  cc(),
                  new Text("立即注册",style: new TextStyle(
                      color: Colors.blue
                  ),),
                  new Container(
                    margin: EdgeInsets.only(top:30.0,left: 10.0,right: 10.0,bottom: 10.0),
                    child: new TextFormField(
                      decoration: new InputDecoration(
                        // labelText: '请输入密码',
                          icon: new Icon(Icons.lock),
                          contentPadding: EdgeInsets.only(left: 10.0),
                          hintText: '密码'
                      ),
                      onSaved: (val) {
                        print(val);
                      },

                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Text("立即注册",style: new TextStyle(
                            color: Colors.blue
                        ),),
                        new Text("忘记密码",style: new TextStyle(
                            color: Colors.red
                        ),)
                      ],
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.all(20.0),
                    child: new MaterialButton(
                      child: Text("登录"),
                      elevation: 20,
                      minWidth: double.infinity,
                      color: Colors.blue,
                      height: 50.0,
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
        ),
      );
    }



    Widget cc(){
      return new Container(
        margin: EdgeInsets.only(top:30.0,left: 10.0,right: 10.0,bottom: 10.0),
        child: new TextFormField(
          decoration: new InputDecoration(
            // labelText: '手机',
              icon: new Icon(Icons.phone),
              contentPadding: EdgeInsets.only(left: 10.0),
              hintText: '请输入手机号'
          ),
          onSaved: (val) {
            print(val);
          },

        ),
      );
    }




}
