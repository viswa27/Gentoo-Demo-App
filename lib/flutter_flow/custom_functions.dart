import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<CategformodelStruct> filtercatelist(
  String title,
  List<CategformodelStruct> categorylist,
) {
  return categorylist
      .where((categorylist) => categorylist.catetype == title)
      .toList();
}

double? calculateSubtotal(List<double> itemTotals) {
  double subtotal = 0.0;
  for (double total in itemTotals) {
    subtotal += total;
  }

  // Apply discount
  double discount = subtotal * 0.02;
  double discountedSubtotal = subtotal - discount;

  // Apply tax
  double tax = discountedSubtotal * 0.10;
  double subtotalWithTax = discountedSubtotal + tax;

  return subtotalWithTax;
}
