import "dart:convert";

import "package:flutter/material.dart";
import 'package:frontend/screen/widgets/snack_bar.dart';

import "package:http/http.dart" as http;

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body)['msg'], false);
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)['error'], false);
      break;
    default:
      showSnackBar(context, response.body, true);
  }
}
