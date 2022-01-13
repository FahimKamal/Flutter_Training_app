import 'package:flutter/material.dart';

PreferredSizeWidget AppBarDesign(String appBarName){
  return AppBar(
    title: Text(appBarName),
    centerTitle: true,
  );
}