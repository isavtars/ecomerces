import 'package:flutter/material.dart';

getSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

extension GetSize on double {
  toResponsive(BuildContext context) {
    return (getSize(context).height * this) + (getSize(context).width * this);
  }

  h(BuildContext context) {
    return getSize(context).height * this;
  }

  w(BuildContext context) {
    return getSize(context).height * this;
  }

  // boxheight(BuildContext context) {
  //   return SizedBox(height: getSize(context).height * this);
  // }

  // boxWidth(BuildContext context) {
  //   return SizedBox(height: getSize(context).width * this);
  // }
}
