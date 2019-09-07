import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myflutter_app/widgets/MyWidgets.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new RegisterPageState();
  }
}
class RegisterPageState extends State<RegisterPage>{

  Timer _countdownTimer;
  String _codeCountdownStr = '获取验证码';
  int _countdownNum = 59;
  String retss(){
    return null;
  }
  Future<bool> reGetCountdown() {
    setState(() {
      if (_countdownTimer != null) {
        return null;
      }
      Fluttertoast.showToast(msg: '已发送');
      // Timer的第一秒倒计时是有一点延迟的，为了立刻显示效果可以添加下一行。
      _codeCountdownStr = '${_countdownNum--}s重新获取';
      _countdownTimer =
      new Timer.periodic(new Duration(seconds: 1), (timer) {
        setState(() {
          if (_countdownNum > 0) {
            _codeCountdownStr = '${_countdownNum--}s重新获取';
          } else {
            _codeCountdownStr = '获取验证码';
            _countdownNum = 59;
            _countdownTimer.cancel();
            _countdownTimer = null;
          }
        });
      });
    });
    return null;
  }



  @override
    Widget build(BuildContext context){
      //SingleChildScrollView
      return
         new Scaffold(
          resizeToAvoidBottomPadding: true,
          appBar: MyWidgets.buildAppBar(context, '注册'),
          body:
          SingleChildScrollView(
            child:new Container(

              child: Center(
                child: Column(
                  children: <Widget>[
                    new Container(
                      child: MyWidgets.imageAssetWithSize("images/icons/yuyue.png"),
                      padding: EdgeInsets.only(top:30.0),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top:40.0,left: 10.0,right: 10.0,bottom: 10.0),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          // labelText: '手机',
                            icon: new Icon(Icons.phone),
                            contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                            hintText: '请输入手机号',
                        ),
                        onSaved: (val) {
                          print(val);
                        },
                      ),
                    ),
                    Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        new Expanded(
                          flex: 3,
                          child: new Container(
                            margin: EdgeInsets.only(top:20.0,left: 10.0,right: 10.0,bottom: 10.0),
                            child: new TextFormField(
                              obscureText: false,
                              decoration: new InputDecoration(
                                // labelText: '请输入验证码',
                                  icon: new Icon(Icons.lock),
                                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                                  //prefixIcon:new Icon(Icons.lock),
                                  hintText: '请输入验证码'
                              ),
                              onSaved: (val) {
                                print(val);
                              },

                            ),
                          )
                        ),
                        new Expanded(
                          flex: 1,
                          child: new MaterialButton(
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.grey,
                              child: new Text(_codeCountdownStr ,style: new TextStyle(color: Colors.blue,fontSize: 12.0),),
                              onPressed: ()=>retss,
                           ),
                        )
                      ],
                    ),
                    new Container(
                      margin: EdgeInsets.only(top:20.0,left: 10.0,right: 10.0,bottom: 10.0),
                      child: new TextFormField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          // labelText: '请输入验证码',
                            icon: new Icon(Icons.lock),
                            contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                            //prefixIcon:new Icon(Icons.lock),
                            hintText: '请输入验证码'
                        ),
                        onSaved: (val) {
                          print(val);
                        },

                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top:20.0,left: 10.0,right: 10.0,bottom: 10.0),
                      child: new TextFormField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          // labelText: '请输入验证码',
                            icon: new Icon(Icons.lock),
                            contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                            //prefixIcon:new Icon(Icons.lock),
                            hintText: '请输入密码'
                        ),
                        onSaved: (val) {
                          print(val);
                        },

                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top:20.0,left: 10.0,right: 10.0,bottom: 10.0),
                      child: new TextFormField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          // labelText: '请再次输入密码',
                            icon: new Icon(Icons.lock),
                            contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                            //prefixIcon:new Icon(Icons.lock),
                            hintText: '请再次输入密码'
                        ),
                        onSaved: (val) {
                          print(val);
                        },

                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.all(20.0),
                      child: new MaterialButton(
                        child: Text("注册"),
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
          )
         );
    }


  @override
  void dispose() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
    super.dispose();
  }
}
