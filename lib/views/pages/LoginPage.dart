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
                  child: new Image.network("http://pic25.nipic.com/20121112/9252150_150552938000_2.jpg"),
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
                )
              ],
            ),
          ),
        ),
      );
    }
}
