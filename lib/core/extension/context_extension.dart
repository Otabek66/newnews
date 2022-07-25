import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext{
  MediaQueryData get mediaQueryData => MediaQuery.of(this);
  double get h => mediaQueryData.size.height/812;
  double get height => mediaQueryData.size.height;
  double get w => mediaQueryData.size.width/375;
  double get width => mediaQueryData.size.width;
}