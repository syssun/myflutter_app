import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class MyWidgets {

  static Widget buildAppBar(BuildContext context,String title){
    return new AppBar(title:new Text(title),centerTitle: true,);
  }
  static Image imageNet(String src){
    return new Image.network(src,fit: BoxFit.fill,);
  }
  static Widget imageNetCache(String src){
   return new CachedNetworkImage(
      imageUrl:src,
     fit: BoxFit.fill,
    );
   // return Image(image: new CachedNetworkImageProvider(src),fit: BoxFit.fill,);
  }
  static Image imageAssetWithSize(String src,{double size=50.0}){
    return new Image.asset(src,width: size,height: size,fit: BoxFit.fill,);
  }
  static Padding getText1(title){
    TextStyle textStyle = new TextStyle(fontWeight: FontWeight.normal, fontSize: 14.0);
    return new Padding(
        padding: const EdgeInsets.only(top: 10),
        child: new Text(title,style: textStyle)
    );
  }

  static SlideTransition createTransition(
      Animation<double> animation, Widget child) {
    return new SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(animation),
      child: child,
    );
  }



}