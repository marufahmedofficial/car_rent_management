import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'utils.dart';

String getFormattedDate(DateTime dateTime, String pattern) {
  return DateFormat(pattern).format(dateTime);
}

void showMsg(BuildContext context, String msg) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));

Future<bool> setLoginStatus(bool status) async {
  final pref = await SharedPreferences.getInstance();
  return pref.setBool(isLoggedIn, status);
}

Future<bool> getLoginStatus() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getBool(isLoggedIn)??false;
}

Future<bool> setUserId(int id) async {
  final pref = await SharedPreferences.getInstance();
  return pref.setInt(userId, id);
}

Future<int> getUserId() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getInt(userId)??0;
}