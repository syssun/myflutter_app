import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myflutter_app/views/pages/LoginPage.dart';
import 'dart:async';
import 'package:myflutter_app/widgets/MyWidgets.dart';
import 'package:image_picker/image_picker.dart';
class MinePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new _Page();
  }
}
class _Page extends State<MinePage>{
  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  void   jump(BuildContext context,Widget widget) {
    Navigator.push<String>(
      context,
      new MaterialPageRoute(
        builder: (context) => widget,
      ),
    ) ;
  }



  @override
  Widget build(BuildContext context){
    return layout(context);
  }
  Widget layout(BuildContext context){
    return new Scaffold(
      appBar: MyWidgets.buildAppBar(context, "我的"),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            jump(context,new LoginPage());
          },
          tooltip: '选择图片',
          child: Icon(Icons.add_a_photo),
        )
    );
  }
}
